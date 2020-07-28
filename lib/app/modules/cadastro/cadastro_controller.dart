import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:vitalis/app/data/model/user_model.dart';
import 'package:vitalis/app/data/repository/user_repository.dart';

class CadastroController extends GetxController {

  final UserRepository repository;
  CadastroController({@required this.repository}) : assert (repository != null);

  final _user = UserModel().obs;
  get user => this._user.value;
  set user(value) => this._user.value = value;

  final _condicaoIndex = 0.obs;
  get condicaoIndex => this._condicaoIndex.value;
  set condicaoIndex(value) => this._condicaoIndex.value = value;

  final _condicoesSocio = ['Baixa', 'Médio', 'Alta'].obs;
  get condicoesSocio => this._condicoesSocio.value;
  set condicoesSocio(value) => this._condicoesSocio.value = value;

  final _escolaridadeIndex = 0.obs;
  get escolaridadeIndex => this._escolaridadeIndex.value;
  set escolaridadeIndex(value) => this._escolaridadeIndex.value = value;
  
  final _escolaridade = ['Nenhum', 'básico', 'médio', 'superior'].obs;
  get escolaridade => this._escolaridade.value;
  set escolaridade(value) => this._escolaridade.value = value;
  
  final _trabalha = ['Sim', 'Não', 'Trabalho em casa'].obs;
  get trabalha => this._trabalha.value;
  set trabalha(value) => this._trabalha.value = value;
  
  final _trabalhaIndex = 0.obs;
  get trabalhaIndex => this._trabalhaIndex.value;
  set trabalhaIndex(value) => this._trabalhaIndex.value = value;
  
  final _sairIndex = 0.obs;
  get sairIndex => this._sairIndex.value;
  set sairIndex(value) => this._sairIndex.value = value;
  
  final _sair = ['Não', 'Normalmente', 'Apenas por necessidade'].obs;
  get sair => this._sair.value;
  set sair(value) => this._sair.value = value;
  

  onChangedCondicaoSocio(value) => this.condicaoIndex = value;
  onChangedEscolaridade(value) => this.escolaridadeIndex = value;
  onChangedTrabalha(value) => this.trabalhaIndex = value;
  onChangedSair(value) => this.sairIndex = value;

  cadastrar(){

  }
}