import 'package:flutter/material.dart';

import '../config/color.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(child: Column(
      children: [
        TextFormField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            hintText: 'Search for lectures here', hintStyle: TextStyle(color: CustomColor.appBlue),
            suffixIcon: Icon(Icons.search_outlined, color: CustomColor.appBlue,),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(
                color: CustomColor.appBlue,
              ),
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(
                  color: CustomColor.appBlue,
                )
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(
                color: CustomColor.appBlue,
              ),
            ),
          ),
        ),
      ],
    ));
  }
}