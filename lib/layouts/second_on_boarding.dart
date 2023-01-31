import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/config/color.dart';
import 'package:at_tareeq/config/small_text.dart';
import 'package:flutter/material.dart';

class SecondOnBoarding extends StatelessWidget {
  const SecondOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage(
            'assets/onboarding_b.png'
          )),
          SizedBox(height: 32,),
          BigText(text: 'Upload/Record Lectures'),
          SizedBox(height: 16,),
          SmallText(text: 'Be it organization, mosque, or lecturer. You can upload lectures for your audience', color: CustomColor.appBlue,)
        ],
      ),
    );
  }
}
