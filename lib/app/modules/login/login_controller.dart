import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:profectus/app/data/model/user_model.dart';
import 'package:profectus/app/data/repository/user_repository.dart';
import 'package:profectus/app/routes/app_pages.dart';

class LoginController extends GetxController {

  final UserRepository repository;
  LoginController({@required this.repository}) : assert(repository != null);

  final _isCPF = false.obs;
  get isCPF => this._isCPF.value;
  set isCPF(value) => this._isCPF.value = value;

  final _user = UserModel().obs;
  get user => this._user.value;
  set user(value) => this._user.value = value;

  final _obscure = true.obs;
  get obscure => this._obscure.value;
  set obscure(value) => this._obscure.value = value;

  validateCpf(value) => GetUtils.isCpf(value) ? null : 'Insira um CPF válido' ;
  validateSenha(value) => value < 5 ? 'Insira uma senha válida' : null ;

  onSavedCpf(value) => this.user.cpf = value;
  onSavedSenha(value) => this.user.senha = value;

  onChangeCpf(value) => GetUtils.isCpf(value) ? this.isCPF = true : null ;
  onChangeSenha(value) => this.user.senha = value;

  show() => this.obscure == false? this.obscure = true : this.obscure = false;

  login(){

  }

  cadastro() => Get.toNamed(Routes.CADASTRO);
  
}