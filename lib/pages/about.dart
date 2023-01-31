import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/config/color.dart';
import 'package:at_tareeq/config/small_text.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: CustomColor.appBlue
        ),
        title: BigText(text: 'About'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SmallText(text: 'About'),
              SizedBox(height: 32,),
              BigText(text: 'Terms and Condition'),
              SizedBox(height: 16,),
              SmallText(text: 'Terms and condition'),
            ],
          ),
        ),
      ),
    );
  }
}
