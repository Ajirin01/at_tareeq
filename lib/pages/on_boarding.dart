import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/layouts/second_on_boarding.dart';
import 'package:at_tareeq/layouts/third_on_boarding.dart';
import 'package:at_tareeq/pages/on_boarding_two.dart';
import 'package:at_tareeq/widget/button.dart';
import 'package:at_tareeq/widget/custom_page_route.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../layouts/first_on_boarding.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {

  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 150),
        child: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState((){
              isLastPage = index == 2;
            });
          },
          children: [
            FirstOnBoarding(),
            SecondOnBoarding(),
            ThirdOnBoarding(),
          ],
        ),
      ),
      bottomSheet: isLastPage ?
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        height: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  style: TextButton.styleFrom(
                    primary: Colors.transparent,
                  ),
                  onPressed: (){},
                  icon: Text('Skip'),
                  label: Icon(Icons.keyboard_arrow_right_rounded),
                ),
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    dotWidth: 8,
                    dotHeight: 8,
                    spacing: 8,
                    dotColor: Colors.black45,
                    activeDotColor: Colors.black45,
                  ),
                  onDotClicked: (index) => controller.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.easeIn),
                ),
                TextButton.icon(
                  style: TextButton.styleFrom(
                    primary: Colors.transparent,
                  ),
                  onPressed: (){},
                  icon: Text('Skip'),
                  label: Icon(Icons.keyboard_arrow_right_rounded),
                ),
              ],
            ),
            CustomButton(text: 'Get Started', onPressed: (){
              Navigator.of(context).push(CustomPageRoute(child: OnBoardingTwo()));
            }),
          ],
        ),
      )
      :Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        height: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  style: TextButton.styleFrom(
                    primary: Colors.transparent,
                  ),
                  onPressed: (){},
                  icon: Text('Skip'),
                  label: Icon(Icons.keyboard_arrow_right_rounded),
                ),
                SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                  effect: ExpandingDotsEffect(
                    dotWidth: 8,
                    dotHeight: 8,
                    spacing: 8,
                    dotColor: Colors.black45,
                    activeDotColor: Colors.black45,
                  ),
                  onDotClicked: (index) => controller.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.easeIn),
                ),
                TextButton.icon(
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                  ),
                    onPressed: (){
                      controller.jumpToPage(2);
                    },
                    icon: Text('Skip'),
                    label: Icon(Icons.keyboard_arrow_right_rounded),
                ),
              ],
            ),
            CustomButton(text: 'Next', onPressed: (){
              controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
            }),
          ],
        ),
      ),
    );
  }
}
