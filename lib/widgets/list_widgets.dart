import 'package:flutter/material.dart';

import 'buttons.dart';
import 'main_widget.dart';

List<Widget> imagesButtons(BuildContext context) {
  return [
    ImageButton(
        action: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const SignOutWidget()));
          // Navigator.of(context).pop();
        },
        asset: 'assets/images/sign_in_with_email_icon_3.jpg'),
    ImageButton(
        action: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const SignOutWidget()));
          // Navigator.of(context).pop();
        },
        asset: 'assets/images/sign_in_with_google_icon_3.jpg'),
    ImageButton(
        action: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const SignOutWidget()));
          // Navigator.of(context).pop();
        },
        asset: 'assets/images/sign_in_with_games_icon_3.jpg'),
  ];
}

List<Widget> roundButtons(BuildContext context, ) {
  return [
    RoundButton(
        text: 'Sign In Mail',
        action: () {
        }),
    RoundButton(
        text: 'Sign In Google',
        action: () {
        }),
    RoundButton(
        text: 'Sign In Play Games',
        action: () {
        }),
  ];
}
