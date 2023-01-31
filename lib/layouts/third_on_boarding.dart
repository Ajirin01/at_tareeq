import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/config/color.dart';
import 'package:at_tareeq/config/small_text.dart';
import 'package:flutter/material.dart';

class ThirdOnBoarding extends StatelessWidget {
  const ThirdOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage(
            'assets/onboarding_c.png'
          )),
          SizedBox(height: 32,),
          BigText(text: 'Be Notified of a Lecture'),
          SizedBox(height: 16,),
          SmallText(text: 'Get notified of a lecture happening in your location.', color: CustomColor.appBlue,)
        ],
      ),
    );
  }
}
