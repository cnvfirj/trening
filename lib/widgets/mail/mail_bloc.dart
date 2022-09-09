import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trening/widgets/user.dart';

class CubitMailBloc extends Cubit<LoginUser>{
  CubitMailBloc():super(LoginUser());

  void setMail(String mail){
     state.email = mail;
     print(mail);
  }

  void setPass(String pass){
     state.pass = pass;
     print(pass);
  }

  void acceptMail(BuildContext context){
     print('accept');
  }

}