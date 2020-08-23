import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:profectus/app/data/model/CEP_model.dart';

import 'package:profectus/app/data/model/estados_model.dart';
import 'package:profectus/app/data/model/municipio.dart';
import 'package:profectus/app/data/model/user_model.dart';
import 'package:profectus/app/data/repository/user_repository.dart';

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

  CEP cep = CEP();

  final _condicoesSocio = ['Alta', 'Média', 'Baixa'].obs;
  get condicoesSocio => this._condicoesSocio.value;
  set condicoesSocio(value) => this._condicoesSocio.value = value;

  final visible = false.obs;

  final _condicaoIndex = 0.obs;
  get condicaoIndex => this._condicaoIndex.value;
  set condicaoIndex(value) => this._condicaoIndex.value = value;

  final _contraiu = ['Sim', 'Não'].obs;
  get contraiu => this._contraiu.value;
  set contraiu(value) => this._contraiu.value = value;

  final _contraiuIndex = 0.obs;
  get contraiuIndex => this._contraiuIndex.value;
  set contraiuIndex(value) => this._contraiuIndex.value = value;

  final _doencas = ['Nenhuma', 'Uma', 'Mais de uma'].obs;
  get doencas => this._doencas.value;
  set doencas(value) => this._doencas.value = value;

  final _doencasIndex = 0.obs;
  get doencasIndex => this._doencasIndex.value;
  set doencasIndex(value) => this._doencasIndex.value = value;

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

  Municipio municipio = Municipio();

  onChangedCep(value) async {
    if (value.length == 8) {
      await repository.getCEP(value).then((data) {
        this.cep = data;
        print(this.cep.localidade);
      });
      await repository.getMunicipo(cep.ibge).then((data) {
        municipio = data;
      });
      this.user.estado = municipio.microrregiao.mesorregiao.uF.id;
      this.user.municipio = this.municipio.id;
      this.user.regiao = this.municipio.microrregiao.mesorregiao.id;
      print(this.user.municipio);
    }
  }

  onChangedCondicaoSocio(value) => this.condicaoIndex = value;
  onChangedContraiu(value) => this.contraiuIndex = value;
  onChangedTrabalha(value) => this.trabalhaIndex = value;
  onChangedSair(value) => this.sairIndex = value;
  onChangedDoencas(value) => this.doencasIndex = value;
  onChangedEmail(value) => GetUtils.isEmail(value)
      ? this.isEmail.value = true
      : this.isEmail.value = false;
  onChangedCpf(value) {
    GetUtils.isCpf(value) ? this.isCpf.value = true : this.isCpf.value = false;
  }

  onChangedSenha(value) => this.user.senha = value;
  onChangedName(value) =>
      value != this.user.name ? this.user.name = value : null;
  onChangedIdade(value) => this.idadeIndex = value;
  onChangedCidade(value) => this.cidade = value;

  validateCep(value) => value.length < 8 ? 'Insira um CEP válido' : null;
  validateCidade(value) => value.length < 3 ? 'Insira uma cidade válida' : null;
  validateCpf(value) =>
      GetUtils.isCpf(value) == true ? null : 'Insira um CPF válido.';
  validateName(value) => value.length < 3 ? 'Insira um nome válido.' : null;
  validateSenha(value) => value.length < 6 ? 'Insira uma senha válida.' : null;
  validateEmail(value) =>
      GetUtils.isEmail(value) ? null : 'Insira um email válido.';
  validateIdade(value) => int.parse(value) > 0 && int.parse(value) < 110
      ? null
      : 'Insira uma idade válida.';

  final _idadeIndex = 0.obs;
  get idadeIndex => this._idadeIndex.value;
  set idadeIndex(value) => this._idadeIndex.value = value;

  final _idades = ['Não', 'Sim'].obs;
  get idades => this._idades.value;
  set idades(value) => this._idades.value = value;

  onSavedCep(value) => this.user.cep = value;
  onSavedEmail(value) => this.user.email = value;
  onSavedSenha(value) => this.user.senha = value;
  onSavedIdade(value) => this.user.idade = value;
  onSavedName(value) => this.user.name = value;
  onSavedCpf(value) => this.user.cpf = value;
  onSavedCidade(value) => this.cidade = value;

  final estados = List<Estado>().obs;

  final _cidade = ''.obs;
  get cidade => this._cidade.value;
  set cidade(value) => this._cidade.value = value;

  final _selectedEstado = Estado().obs;
  get selectedEstado => this._selectedEstado.value;
  set selectedEstado(value) => this._selectedEstado.value = value;

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
    this.user.problemas = doencas[doencasIndex];
    this.user.condicaoSocio = condicoesSocio[condicaoIndex];
    this.user.contraiu = contraiu[contraiuIndex];
  }

  onChangedEstado(value) {
    this.selectedEstado = value;
    //print(selectedEstado.nome);
  }

  final isCpf = false.obs;
  final isEmail = false.obs;
  final cpfExists = true.obs;

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
      var token = user.getIdToken().toString();
      await saveUserInfo(token);
      this.status = false;
    } else
      this.message = 'Erro ao realizar cadastro';
  }

  saveUserInfo(token) async {
    await Firestore.instance
        .collection('users')
        .document(user.email)
        .setData(this.user.toJson());
  }

  pontuacao() {
    this.user.pontuacao = this.condicaoIndex +
        this.contatoComInfectIndex +
        this.doencasIndex +
        this.sairIndex +
        this.contraiuIndex +
        this.trabalhaIndex +
        this.idadeIndex +
        this.doencasIndex;
  }

  Estado est;
  saveEstadoInfo() async {}

  saveRegiaoInfo() async {}
  saveMunicipioInfo() async {}
}
