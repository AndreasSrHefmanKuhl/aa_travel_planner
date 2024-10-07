import 'package:flutter/material.dart';

class GoBackButton extends StatelessWidget {
  final Text text;

  final void Function()? press;

  const GoBackButton({
    super.key,
    required this.text,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      style: ElevatedButton.styleFrom(backgroundColor: Colors.teal[600]),
      child: text,
    );
  }
}
