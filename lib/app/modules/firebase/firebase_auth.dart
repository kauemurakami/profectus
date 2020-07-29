import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

class FirebaseUser {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //final GoogleSignIn _googleSignIn = GoogleSignIn();
  login(email, senha) {}

  createUser({@required user}) async {
    try {
      var authResult = await _auth.createUserWithEmailAndPassword(
          email: user.email, password: user.senha);
      Firestore.instance
          .collection('users')
          .document(user.cpf)
          .setData(user.toJson());
      return authResult.user != null;
    } catch (e) {
      return e.message;
    }
  }

  signOut() {}
}
