import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../firebase_options.dart';
import 'mail/mail_widget.dart';
import 'main_widget.dart';

class CubitUserData extends Cubit<String> {
  CubitUserData(String userData) : super(userData);

  void logOut(BuildContext context) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const SignInWidget()));
  }
}

typedef ContextCallback = void Function(BuildContext context);

class CubitStartWindow extends Cubit<void> {
  CubitStartWindow() : super(null);

  void signInMail(BuildContext context) {
    _init();
    // showDialog(
    //     context: context,
    //     builder: (context) => const AlertDialog(
    //           content: MailDialog(),
    //         ));
  }

  void signInGoogle(BuildContext context) {
    _out();
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const SignOutWidget()));
  }

  void signInPlayGames(BuildContext context) {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const SignOutWidget()));
  }

  void _init()async{
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform
    );
      _signIn();
  }

  void _check(){
    FirebaseAuth.instance.userChanges().listen((user) {
      if(user!=null){
        print('check ${user.email}');
        print('user id ${user.uid}');
      }else{
        print('null start register');
        _register();
      }
    });
  }

  void _register() async{
    final FirebaseAuth auth = FirebaseAuth.instance;
    try {
      UserCredential credential =
      await auth.createUserWithEmailAndPassword(
          email: 'dodod1122@do.com',
          password: 'password');
      User? user = credential.user;
      if(user!=null){
        print('user created/ Start check');
        _check();
      }
    } on FirebaseAuthException catch (e) {
      print(e.toString());
    }
  }

  void _signIn()async{
    final FirebaseAuth auth = FirebaseAuth.instance;
    try{
      UserCredential credential =
      await auth.signInWithEmailAndPassword(
          email: 'dodod1122@do.com',
          password: 'password1');
      User? user = credential.user;
      if(user!=null){
        print('user logged/ Start check');
        _check();
      }
    }on FirebaseAuthException catch(e){
      print(e.toString());
    }
  }

  _out(){
    FirebaseAuth.instance.signOut();
  }
}
