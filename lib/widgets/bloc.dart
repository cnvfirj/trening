import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              content: MailDialog(),
            ));
  }

  void signInGoogle(BuildContext context) {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const SignOutWidget()));
  }

  void signInPlayGames(BuildContext context) {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const SignOutWidget()));
  }
}
