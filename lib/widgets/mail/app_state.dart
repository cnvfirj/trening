import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:trening/firebase_options.dart';

class ApplicationState {




  Future<void>init()async{
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
    );
    FirebaseAuth.instance.userChanges().listen((user) {
         if(user!=null){
            print('${user.email}');
         }
    });
  }
}