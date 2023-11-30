import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  VoidCallback onPressed;
  MyButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Theme.of(context).primaryColor,
      child: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
