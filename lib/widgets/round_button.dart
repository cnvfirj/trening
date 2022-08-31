
import 'package:flutter/material.dart';

typedef Action = void Function();
class RoundButton extends StatelessWidget{
  final String text;
  final Action action;
  const RoundButton({super.key, required this.text, required this.action});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
        onPressed: action,
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          backgroundColor: Colors.black
        ),
        child: Text(text, style: const TextStyle(color: Colors.white),),
    );
  }

}