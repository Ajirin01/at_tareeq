import 'package:at_tareeq/config/small_text.dart';
import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  GridItem({Key? key,
    this.image = 'assets/pic_one.png',
    required this.title,
    required this.onTap,
    required this.lecturer,
  }) : super(key: key);

  final String image;
  final String title;
  final String lecturer;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image(
              fit: BoxFit.fill,
              width: 120,
              height: 120,
              image: AssetImage(image),
            ),
          ),
          SizedBox(height: 2,),
          SmallText(text: title),
          SizedBox(height: 2,),
          SmallText(text: lecturer, fontSize: 12, color: Colors.grey,),
        ],
      ),
    );
  }
}
