import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trening/widgets/bloc.dart';
import 'package:trening/widgets/list_widgets.dart';

import 'buttons.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Trening Sign In",
      home: SignInWidget(),
    );
  }
}

class SignInWidget extends StatelessWidget {
  const SignInWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign in'),
      ),
      body: Center(
          child:
          BlocProvider<CubitStartWindow>(
              create: (BuildContext context) => CubitStartWindow(),
              child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RoundButton(text: 'Sign In Mail', action: (){
                      context.read<CubitStartWindow>().signInMail(context);
                    }),
                    RoundButton(text: 'Sign In Google', action: () {
                      context.read<CubitStartWindow>().signInGoogle(context);
                    }),
                    RoundButton(text: 'Sign In Play Games', action: () {
                      context.read<CubitStartWindow>().signInPlayGames(context);
                    }),
                  ]))
      ),
    );
  }
}

class SignOutWidget extends StatelessWidget {
  const SignOutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Out'),
      ),
      body: Center(
          child: BlocProvider<CubitUserData>(
              create: (BuildContext context) => CubitUserData('User Sign Data'),
              child: Column(
                children: [
                  Text(context.read<CubitUserData>().state),
                  RoundButton(
                      text: 'Sign Out',
                      action: () {
                        context.read<CubitUserData>().logOut(context);
                      }),
                ],
              ))),
    );
  }
}
