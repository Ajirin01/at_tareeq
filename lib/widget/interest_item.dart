import 'package:flutter/material.dart';

import '../config/small_text.dart';

class InterestItem extends StatelessWidget {
  InterestItem({Key? key,
    required this.image,
    this.radius = 45,
    required this.text,
    required this.onTap
  }) : super(key: key);

  final String image;
  double radius;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: radius,
          ),
          SizedBox(height: 16,),
          SmallText(text: text, fontSize: 12,),
        ],
      ),
    );
  }
}
