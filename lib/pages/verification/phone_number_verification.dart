import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/config/small_text.dart';
import 'package:at_tareeq/pages/verification/successful.dart';
import 'package:at_tareeq/widget/button.dart';
import 'package:at_tareeq/widget/text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

import '../../config/color.dart';
import '../../widget/custom_page_route.dart';

class PhoneNumberVerification extends StatefulWidget {
  const PhoneNumberVerification({Key? key, required this.keyValue}) : super(key: key);

  final String keyValue;

  @override
  State<PhoneNumberVerification> createState() => _PhoneNumberVerificationState();
}

class _PhoneNumberVerificationState extends State<PhoneNumberVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
            color: CustomColor.appBlue
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 84, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BigText(text: 'Enter Verification code'),
              SizedBox(height: 32,),
              SmallText(text: 'Enter the verification sent to your phone number "08123456789".', color: CustomColor.appBlue, textAlign: TextAlign.center,),
              SizedBox(height: 64,),
              VerificationCode(
                length: 4,
                textStyle: TextStyle(fontSize: 20, color: CustomColor.appBlue, fontWeight: FontWeight.bold),
                underlineColor: CustomColor.appBlue,
                keyboardType: TextInputType.number,
                underlineUnfocusedColor: Colors.black,
                onCompleted: (value) {},
                onEditing: (value) {},
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmallText(text: "Didn't recieve the code?", fontSize: 14,),
                  CustomTextButton(text: 'Resend', color: Colors.red, fontSize: 14, onPressed: () {}),
                ],
              ),
              SizedBox(height: 32,),
              CustomButton(text: 'Verify', onPressed: () {
                Navigator.of(context).push(CustomPageRoute(child: Successful(keyValue: widget.keyValue)));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
