import 'package:at_tareeq/config/color.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key,
    required this.text,
    required this.onPressed,
    this.primary = CustomColor.appBlue,
    this.onPrimary = Colors.white,
    this.size = const Size(double.infinity, 42),
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;
  final Color? primary;
  final Color? onPrimary;
  final Size? size;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: size,
        textStyle: TextStyle(fontSize: 18),
        primary: primary,
        onPrimary: onPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)
        )
      ),
        onPressed: onPressed,
        child: Text(text),
    );
  }
}
