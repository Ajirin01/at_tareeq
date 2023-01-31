import 'dart:async';

import 'package:at_tareeq/config/color.dart';
import 'package:at_tareeq/pages/on_boarding.dart';
import 'package:at_tareeq/widget/custom_page_route.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5), timer);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.appBlue,
      body: Center(
        child: Container(

          height: MediaQuery.of(context).size.height/2,
          width: MediaQuery.of(context).size.width/2,


          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'assets/named.png'
                ),
                fit: BoxFit.scaleDown
            ),
          ),

        ),
      ),
    );
  }

  timer() {
    setState(() {
      Navigator.of(context).pushReplacement(
        CustomPageRoute(child: OnBoarding())
      );
    });
  }
}
