import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  const SmallText({Key? key,
    required this.text,
    this.fontSize = 16,
    this.color = Colors.black,
    this.textAlign = TextAlign.start,
  }) : super(key: key);

  final String text;
  final double fontSize;
  final Color? color;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Brand-Regular',
        fontSize: fontSize,
        letterSpacing: 1,
        color: color,
      ),
      textAlign: textAlign,
    );
  }
}
