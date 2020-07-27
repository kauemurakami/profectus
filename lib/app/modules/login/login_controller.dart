import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:vitalis/app/data/repository/user_repository.dart';

class LoginController extends GetxController {

  final UserRepository repository;
  LoginController({@required this.repository}) : assert(repository != null);

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}