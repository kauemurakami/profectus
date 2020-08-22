import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:profectus/app/data/model/user_model.dart';
import 'package:profectus/app/data/repository/user_repository.dart';
import 'package:profectus/app/routes/app_pages.dart';

class LoginController extends GetxController {
  final UserRepository repository;
  LoginController({@required this.repository}) : assert(repository != null);

  final _isEmail = false.obs;
  get isEmail => this._isEmail.value;
  set isEmail(value) => this._isEmail.value = value;

  final _message = ''.obs;
  get message => this._message.value;
  set message(value) => this._message.value = value;

  var user = UserModel();

  final _obscure = true.obs;
  get obscure => this._obscure.value;
  set obscure(value) => this._obscure.value = value;

  validateEmail(value) =>
      GetUtils.isEmail(value) ? null : 'Insira um Email válido';
  validateSenha(value) => value.length < 5 ? 'Insira uma senha válida' : null;

  onSavedEmail(value) => this.user.email = value;
  onSavedSenha(value) => this.user.senha = value;

  onChangeEmail(value) =>
      GetUtils.isEmail(value) ? this.isEmail = true : this.isEmail = false;
  onChangeSenha(value) => this.user.senha = value;
  final auth = false.obs;
  show() => this.obscure == false ? this.obscure = true : this.obscure = false;

  login() async {
    try {
      final FirebaseUser user = (await FirebaseAuth.instance
              .signInWithEmailAndPassword(
                  email: this.user.email, password: this.user.senha))
          .user;
      if (user != null) {
        await getInfo();
        return true;
      } else {
        return false;
      }
    } catch (e) {
      this.message = 'Email ou senha incorreto';
      return false;
    }
  }

  getInfo() async {
    print(this.user.email);
    await Firestore.instance
        .collection('users')
        .document(this.user.email)
        .get()
        .then((DocumentSnapshot ds) {
      this.user = UserModel.fromJson(ds.data);
    });
  }

  cadastro() => Get.toNamed(Routes.CADASTRO);
}
