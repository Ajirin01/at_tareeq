import 'package:at_tareeq/config/small_text.dart';
import 'package:flutter/material.dart';

import '../config/color.dart';

class VideoItem extends StatelessWidget {
  VideoItem({Key? key,
    required this.title,
    required this.lecturer,
    this.image = 'assets/central_mosque.png',
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final String lecturer;
  final String image;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(image),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              height: 65,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: CustomColor.appPurple,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SmallText(text: title, color: Colors.white,),
                      SizedBox(height: 2,),
                      SmallText(text: lecturer, fontSize: 14, color: Colors.white,)
                    ],
                  ),
                  IconButton(onPressed: onPressed, icon: Icon(Icons.play_circle_fill_rounded, color: Colors.white, size: 32,),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}