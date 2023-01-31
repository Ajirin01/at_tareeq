import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/config/color.dart';
import 'package:at_tareeq/config/small_text.dart';
import 'package:at_tareeq/pages/verification/email_verification.dart';
import 'package:at_tareeq/pages/verification/phone_number_verification.dart';
import 'package:at_tareeq/widget/button.dart';
import 'package:at_tareeq/widget/custom_page_route.dart';
import 'package:flutter/material.dart';

class VerificationMethod extends StatefulWidget {
  const VerificationMethod({Key? key, required this.keyValue}) : super(key: key);

  final String keyValue;

  @override
  State<VerificationMethod> createState() => _VerificationMethodState();
}

class _VerificationMethodState extends State<VerificationMethod> {

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BigText(text: 'Verification Method'),
              SizedBox(height: 32,),
              SmallText(text: 'Where do you want your verification code sent to?', color: CustomColor.appBlue, textAlign: TextAlign.center,),
              SizedBox(height: 64,),
              CustomButton(text: 'Email address', onPressed: (){
                Navigator.of(context).push(CustomPageRoute(child: EmailVerification(keyValue: widget.keyValue)));
              }),
              SizedBox(height: 16,),
              CustomButton(text: 'Mobile Number', onPressed: (){
                Navigator.of(context).push(CustomPageRoute(child: PhoneNumberVerification(keyValue: widget.keyValue)));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
