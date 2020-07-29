import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

class FirebaseConfig {
  //final GoogleSignIn _googleSignIn = GoogleSignIn();
  login(email, senha) {}

  register({@required usuario}) async {
    assert(usuario.email != null);
    assert(usuario.senha != null);
    final FirebaseUser user = (await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: usuario.email, password: usuario.senha))
        .user;
    return user;
  }


  saveUserInfo({@required user}) {
    Firestore.instance
        .collection('users')
        .document(user.cpf)
        .setData(user.toJson());
  }

  signOut() {
    FirebaseAuth.instance.signOut();
  }
}
