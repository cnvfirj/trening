import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trening/widgets/buttons.dart';

import 'main_widget.dart';

class SignInDialog extends StatelessWidget {
  const SignInDialog({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          child: ImageButton(
              action: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignOutWidget()));
                // Navigator.of(context).pop();
              },
              asset: 'assets/images/sign_in_with_email_icon_3.jpg'),
        ),
        Flexible(
          child: ImageButton(
              action: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignOutWidget()));
                // Navigator.of(context).pop();
              },
              asset: 'assets/images/sign_in_with_google_icon_3.jpg'),
        ),
        Flexible(
          child: ImageButton(
              action: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignOutWidget()));
                // Navigator.of(context).pop();
              },
              asset: 'assets/images/sign_in_with_games_icon_3.jpg'),
        ),
      ],
    ));
  }
}
