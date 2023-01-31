import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/layouts/listener_bottom_nav.dart';
import 'package:at_tareeq/widget/button.dart';
import 'package:at_tareeq/widget/custom_page_route.dart';
import 'package:at_tareeq/widget/interest_item.dart';
import 'package:flutter/material.dart';

class Interest extends StatefulWidget {
  const Interest({Key? key, required this.keyValue}) : super(key: key);

  final String keyValue;

  @override
  State<Interest> createState() => _InterestState();
}

class _InterestState extends State<Interest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BigText(text: 'Choose your interests'),
              SizedBox(height: 32,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InterestItem(image: 'assets/recitations.png', text: 'Recitations', onTap: (){}),
                  InterestItem(image: 'assets/salah.png', text: 'Salah', onTap: (){}),
                  InterestItem(image: 'assets/zakat.png', text: 'Zakat', onTap: (){}),
                ],
              ),
              SizedBox(height: 32,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InterestItem(image: 'assets/health.png', text: 'Health', onTap: (){}),
                  InterestItem(image: 'assets/ramadan.png', text: 'Ramadan', onTap: (){}),
                  InterestItem(image: 'assets/hadith.png', text: 'Hadith', onTap: (){}),
                ],
              ),
              SizedBox(height: 32,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InterestItem(image: 'assets/tahajuud.png', text: 'Tahajuud', onTap: (){}),
                  InterestItem(image: 'assets/tawheed.png', text: 'Tawheed', onTap: (){}),
                  InterestItem(image: 'assets/hajj.png', text: 'Hajj', onTap: (){}),
                ],
              ),
              SizedBox(height: 64,),
              CustomButton(text: 'Get Started', onPressed: () {
                Navigator.of(context).push(CustomPageRoute(child: ListenerBottomNav(keyValue : widget.keyValue)));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
