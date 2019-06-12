import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

class FirebaseAutenticacao {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //  Future<bool>  login(String email, String senha) async {
//    print('Recebido para autenticacao. Email $email. Senha $senha');
//    return true;
//  }

  Future<bool> login(String email, String senha) async {
    print('Recebido para autenticacao. Email $email. Senha $senha');
    try {
      final FirebaseUser fUser = await _auth.signInWithEmailAndPassword(
          email: email, password: senha);
      print("Acessando com Email/Senha: ${fUser.uid}");
      return true;
    } catch (error) {
      print(error);
      if (error is PlatformException) {
        print('Codigo de Erro ${error.code}');
        print('Codigo de Erro ${error.message}');
      }
      return false;
    }
  }
}

//class FirebaseAutenticacao {
////  final GoogleSignIn _googleSignIn = GoogleSignIn();
//  final FirebaseAuth _auth = FirebaseAuth.instance;
//
//  Future<bool> login(String email, String senha) async {
//    print('Informados. Email $email. Senha $senha');
//    try {
//      final FirebaseUser fUser =
//      await _auth.signInWithEmailAndPassword(
//          email: 'catalunha.mj@gmail.com', password: 'fazeromelhor');
//      print("Acessando com Email/Senha: ${fUser.displayName}");
//      // Resposta genérica
////      return Response(true, "Login efetuado com sucesso");
//      return true;
//    } catch (error) {
//      print(error);
//      if (error is PlatformException) {
//        print('Codigo de Erro ${error.code}');
//        print('Codigo de Erro ${error.message}');
////        return Response(false, "Email/Senha incorretos\n\n ${error.message}");
//
//      }
////      return Response(false, "Email/Senha incorretos. Erro desconhecido.");
//      return false;
//    }
//  }
//
////  Future<Response> loginGoogle() async {
////    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
////    final GoogleSignInAuthentication googleAuth =
////        await googleUser.authentication;
////
////    final AuthCredential credential = GoogleAuthProvider.getCredential(
////      accessToken: googleAuth.accessToken,
////      idToken: googleAuth.idToken,
////    );
////
////    // Usuario do Firebase
////    final FirebaseUser fuser = await _auth.signInWithCredential(credential);
////    print("signed in " + fuser.displayName);
////
//////    // Cria um usuario do app
//////    final user = User(fuser.displayName,fuser.email,fuser.email);
//////    user.save();
//////
////    // Resposta genérica
////    return Response(true, "Login efetuado com sucesso");
////  }
//
////  Future<void> logout() async {
////    await _auth.signOut();
////    await _googleSignIn.signOut();
////  }
//}
