import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({Key? key,
    required this.text,
    required this.onPressed,
    this.color = Colors.black,
    this.fontSize = 16,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;
  final Color? color;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        textStyle: TextStyle(fontSize: fontSize),
        primary: color,
      ),
        onPressed: onPressed,
        child: Text(text)
    );
  }
}
