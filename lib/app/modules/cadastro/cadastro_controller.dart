import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:profectus/app/data/model/user_model.dart';
import 'package:profectus/app/data/repository/user_repository.dart';
import 'package:profectus/app/routes/app_pages.dart';

class CadastroController extends GetxController {
  final UserRepository repository;
  CadastroController({@required this.repository}) : assert(repository != null);

  final user = UserModel();

  final _contatoComInfect = ['Não', 'Talvez', 'Sim'].obs;
  get contatoComInfect => this._contatoComInfect.value;
  set contatoComInfect(value) => this._contatoComInfect.value = value;

  final _contatoComInfectIndex = 0.obs;
  get contatoComInfectIndex => this._contatoComInfectIndex.value;
  set contatoComInfectIndex(value) => this._contatoComInfectIndex.value = value;

  final _condicoesSocio = ['Alta', 'Média', 'Baixa'].obs;
  get condicoesSocio => this._condicoesSocio.value;
  set condicoesSocio(value) => this._condicoesSocio.value = value;

  final _condicaoIndex = 0.obs;
  get condicaoIndex => this._condicaoIndex.value;
  set condicaoIndex(value) => this._condicaoIndex.value = value;

  final _doencas = ['Nenhuma', 'Uma', 'NMais de uma'].obs;
  get doencas => this._doencas.value;
  set doencas(value) => this._doencas.value = value;

  final _doencasIndex = 0.obs;
  get doencasIndex => this._doencasIndex.value;
  set doencasIndex(value) => this._doencasIndex.value = value;

  final _escolaridadeIndex = 0.obs;
  get escolaridadeIndex => this._escolaridadeIndex.value;
  set escolaridadeIndex(value) => this._escolaridadeIndex.value = value;

  final _escolaridade = ['Superior', 'Médio', 'Básico', 'Nenhum'].obs;
  get escolaridade => this._escolaridade.value;
  set escolaridade(value) => this._escolaridade.value = value;

  final _trabalha = ['Trabalho em casa', 'Não', 'Sim'].obs;
  get trabalha => this._trabalha.value;
  set trabalha(value) => this._trabalha.value = value;

  final _trabalhaIndex = 0.obs;
  get trabalhaIndex => this._trabalhaIndex.value;
  set trabalhaIndex(value) => this._trabalhaIndex.value = value;

  final _sairIndex = 0.obs;
  get sairIndex => this._sairIndex.value;
  set sairIndex(value) => this._sairIndex.value = value;

  final _sair = ['Não', 'Apenas por necessidade', 'Normalmente'].obs;
  get sair => this._sair.value;
  set sair(value) => this._sair.value = value;

  onChangedCondicaoSocio(value) => this.condicaoIndex = value;
  onChangedEscolaridade(value) => this.escolaridadeIndex = value;
  onChangedTrabalha(value) => this.trabalhaIndex = value;
  onChangedSair(value) => this.sairIndex = value;
  onChangedDoencas(value) => this.doencasIndex = value;
  onChangedEmail(value) => this.user.email = value;
  onChangedCpf(value) => value != this.user.cpf ? this.user.cpf = value : null;
  onChangedSenha(value) => this.user.senha = value;
  onChangedName(value) =>
      value != this.user.name ? this.user.name = value : null;
  onChangedIdade(value) =>
      value != this.user.idade ? this.user.idade = value : null;

  validateCpf(value) =>
      GetUtils.isCpf(value) == true ? null : 'Insira um CPF válido.';
  validateName(value) => value.length < 3 ? 'Insira um nome válido.' : null;
  validateSenha(value) => value.length < 6 ? 'Insira uma senha válida.' : null;
  validateEmail(value) =>
      GetUtils.isEmail(value) ? null : 'Insira um email válido.';
  validateIdade(value) => value.length > 0 ? null : 'Insira uma idade válida.';

  onSavedEmail(value) => this.user.email = value;
  onSavedSenha(value) => this.user.senha = value;
  onSavedIdade(value) => this.user.idade = value;
  onSavedName(value) => this.user.name = value;
  onSavedCpf(value) => this.user.cpf = value;

  final _message = ''.obs;
  get message => this._message.value;
  set message(value) => this._message.value = value;

  final _status = false.obs;
  get status => this._status.value;
  set status(value) => this._status.value = value;

  setRadios() {
    this.user.contatoComInfect = contatoComInfect[contatoComInfectIndex];
    this.user.freqSaidas = sair[sairIndex];
    this.user.trabalha = trabalha[trabalhaIndex];
    this.user.escolaridade = escolaridade[escolaridadeIndex];
    this.user.problemas = doencas[doencasIndex];
    this.user.condicaoSocio = condicoesSocio[condicaoIndex];
  }

  cadastrar() async {
    this.status = true;
    final FirebaseUser user =
        (await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: this.user.email,
      password: this.user.senha,
    ))
            .user;
    if (user != null) {
      this.setRadios();
      await pontuacao();
      await saveUserInfo();
      this.status = false;
    } else
      this.message = 'Erro ao realizar cadastro';
  }

  saveUserInfo() async {
    await Firestore.instance
        .collection('users')
        .document(user.cpf)
        .setData(this.user.toJson());
  }

  pontuacao() {
    if(int.parse(this.user.idade) < 1 || int.parse(this.user.idade) >= 60){
      this.user.pontuacao++;
    }
    this.user.pontuacao = this.condicaoIndex +
        this.contatoComInfectIndex +
        this.doencasIndex +
        this.escolaridadeIndex +
        this.sairIndex +
        this.trabalhaIndex +
        this.doencasIndex;
  }
}
