import 'package:at_tareeq/config/color.dart';
import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  CustomInput({Key? key,
    required this.labelText,
    required this.hintText,
    required this.icon,
    required this.onSaved,
    required this.validator,
    this.controller = null,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
  }) : super(key: key);

  final String labelText;
  final String hintText;
  final IconData icon;
  final void Function(String?) onSaved;
  final String? Function(String?) validator;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool obscureText;

  @override
  Widget build(BuildContext context){
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      validator: validator,
      onSaved: onSaved,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: Icon(icon),
        floatingLabelAlignment: FloatingLabelAlignment.start,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
              color: CustomColor.appBlue
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
              color: CustomColor.appBlue
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
              color: Colors.red
          ),
        ),
      ),
    );
  }
}

