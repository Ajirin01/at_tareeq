import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/config/color.dart';
import 'package:at_tareeq/config/small_text.dart';
import 'package:flutter/material.dart';

class FirstOnBoarding extends StatelessWidget {
  const FirstOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage(
            'assets/onboarding_a.png'
          )),
          SizedBox(height: 32,),
          BigText(text: 'Listen to Lectures'),
          SizedBox(height: 16,),
          SmallText(text: 'Have access to lectures from your favourite lecturers, mosques or organizations around you', color: CustomColor.appBlue,),
        ],
      ),
    );
  }
}
