import 'package:flutter/material.dart';

typedef Action = void Function();

class RoundButton extends StatelessWidget {
  final String text;
  final Action action;

  const RoundButton({super.key, required this.text, required this.action});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
      onPressed: action,
      style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(), backgroundColor: Colors.blue),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}

class ImageButton extends StatelessWidget {
  final Action action;
  final String asset;

  const ImageButton({super.key, required this.action, required this.asset});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
      onPressed: action,
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                  side: BorderSide(color: Colors.red)))),
      child: Image.asset(asset),
    );
  }
}
