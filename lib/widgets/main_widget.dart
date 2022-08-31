import 'package:flutter/material.dart';
import 'package:trening/widgets/dialog.dart';

import 'buttons.dart';


class MainWidget extends StatelessWidget{
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Trening Sign In",
      home: SignInWidget(),
    );
  }

}
class SignInWidget extends StatelessWidget{
  const SignInWidget({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
        appBar: AppBar(
          title: const Text('Sign in'),
        ),
        body: Center(
          child: RoundButton(
              text: 'Sign In',
              action: (){
                print('!!!!!!!!!!!!!!!click');
                showDialog(
                    context: context,
                    builder: (BuildContext context)=>const SignInDialog());
                // Navigator.pushReplacement(
                //     context, MaterialPageRoute(builder: (context) => const SignOutWidget()));
              }),
        ),
    );
  }

}



class SignOutWidget extends StatelessWidget{
  const SignOutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sign Out'),
        ),
        body: Center(
          child: RoundButton(
              text: 'Sign Out',
              action: (){
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => const SignInWidget()));
              }),
        ),

    );
  }

}

