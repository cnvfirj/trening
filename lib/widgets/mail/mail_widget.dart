
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trening/widgets/mail/mail_bloc.dart';

import '../user.dart';

class MailDialog extends StatefulWidget{
  const MailDialog({super.key});

  @override
  State<StatefulWidget> createState() =>StateMailDialog();

}

class StateMailDialog extends State<MailDialog>{



  @override
  Widget build(BuildContext context) {
    return   SignUp();

  }

}

class SignUp extends StatelessWidget{
  SignUp({super.key});

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CubitMailBloc>(
      create: (BuildContext context) =>CubitMailBloc(),
      child:Center(
        child: BlocBuilder<CubitMailBloc,LoginUser>(
          builder: (BuildContext context, LoginUser user){
            return Column(
              children:  [
                const Text('Registration'),
                TextField(
                  decoration: const InputDecoration(
                      label: Icon(Icons.mail)
                  ),
                  keyboardType: TextInputType.emailAddress,
                  controller: _controllerEmail..addListener(
                          (){
                        context.read<CubitMailBloc>().setMail(_controllerEmail.text);
                      }
                  ),
                ),
                TextField(
                    decoration: const InputDecoration(
                        label: Icon(Icons.password)
                    ),
                    controller: _controllerPass..addListener(
                            (){
                          context.read<CubitMailBloc>().setPass(_controllerPass.text);
                        }
                    )
                ),
                ElevatedButton(
                    onPressed: (){
                      context.read<CubitMailBloc>().acceptMail(context);
                    },
                    child: const Text('Accept')
                )
              ],
            );
          },
        )

      )
    );

  }

}
class Waiting extends StatelessWidget{
  const Waiting({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator();
  }

}