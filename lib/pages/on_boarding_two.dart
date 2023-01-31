import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/pages/host/form/register_host.dart';
import 'package:at_tareeq/pages/interest.dart';
import 'package:at_tareeq/widget/button_icon.dart';
import 'package:at_tareeq/widget/custom_page_route.dart';
import 'package:flutter/material.dart';

import 'listener/forms/register.dart';

class OnBoardingTwo extends StatefulWidget {
  const OnBoardingTwo({Key? key}) : super(key: key);

  @override
  State<OnBoardingTwo> createState() => _OnBoardingTwoState();
}

class _OnBoardingTwoState extends State<OnBoardingTwo> {
  
  final String guestAccessKey = 'guest access';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/onboarding_d.png')),
            SizedBox(height: 84,),
            BigText(text: 'Who are you?'),
            SizedBox(height: 16,),
            CustomButtonIcon(text: 'Listener', onPressed: () {
              Navigator.of(context).push(CustomPageRoute(child: RegisterListener()));
            }),
            SizedBox(height: 16,),
            CustomButtonIcon(text: 'Host', onPressed: () {
              Navigator.of(context).push(CustomPageRoute(child: RegisterHost()));
            }),
            SizedBox(height: 16,),
            CustomButtonIcon(text: 'Guest Access', onPressed: () {
              Navigator.of(context).push(CustomPageRoute(child: Interest(keyValue: guestAccessKey)));
            })
          ],
        ),
      ),
    );
  }
}
