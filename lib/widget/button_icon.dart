import 'package:flutter/material.dart';

import '../config/color.dart';

class CustomButtonIcon extends StatelessWidget {
  const CustomButtonIcon({Key? key,
    required this.text,
    this.icon = Icons.arrow_forward,
    required this.onPressed,
    this.alignment = Alignment.centerLeft,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final VoidCallback onPressed;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 42),
          textStyle: TextStyle(fontSize: 18),
          primary: CustomColor.appBlue,
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
          )
      ),
        onPressed: onPressed,
        icon: Icon(icon),
        label: Align(child: Text(text), alignment: alignment)
    );
  }
}
