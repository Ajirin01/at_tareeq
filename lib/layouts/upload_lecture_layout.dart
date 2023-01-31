import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import '../config/color.dart';
import '../config/small_text.dart';
import '../widget/button.dart';
import 'host_layout.dart';

class UploadLectureLayout extends StatelessWidget {
  const UploadLectureLayout({Key? key,
    required this.controller,
    required this.onPressed,
    required this.text,
    required this.buttonText,
  }) : super(key: key);

  final ExpandableController controller;
  final VoidCallback onPressed;
  final String text;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: HostLayout(
        listHeader: 'Recent Upload',
        controller: controller,
        expanded: Padding(
          padding: const EdgeInsets.fromLTRB(16, 84, 16, 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.upload_rounded, size: 86, color: Colors.green,),
              SizedBox(height: 16,),
              SmallText(text: text, color: Colors.white, textAlign: TextAlign.center,),
              SizedBox(height: 64,),
              CustomButton(text: buttonText, onPrimary: CustomColor.appBlue, primary: Colors.white, onPressed: onPressed),
            ],
          ),
        ),
        listColumn: Column(
          children: [
            //
          ],
        ),
      ),
    );
  }
}
