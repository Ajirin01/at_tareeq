import 'package:at_tareeq/config/color.dart';
import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  const BigText({Key? key,
    required this.text,
    this.fontSize = 24,
    this.color = CustomColor.appBlue,
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
        fontFamily: 'Brand Bold',
        fontSize: fontSize,
        letterSpacing: 1,
        color: color,
      ),
      textAlign: textAlign,
    );
  }
}
