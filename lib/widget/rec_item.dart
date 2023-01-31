import 'package:flutter/material.dart';

import '../config/small_text.dart';

class RecItem extends StatelessWidget {
  RecItem({Key? key,
    this.image = 'assets/pic_two.png',
    required this.title,
    required this.onTap,
    required this.onTapMenu,
    this.date = '19/06/2022',
    this.time = '12:46 pm',
    this.length = '10:00',
  }) : super(key: key);

  final String image;
  final String title;
  final String date;
  final String time;
  final String length;
  final VoidCallback onTap;
  final VoidCallback onTapMenu;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.symmetric(vertical: 6, horizontal: 0),
        elevation: 0,
        child: Container(
          padding: const EdgeInsets.all(16.0),
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image(
                      fit: BoxFit.fill,
                      width: 60,
                      height: 60,
                      image: AssetImage(image),
                    ),
                  ),
                  SizedBox(width: 16,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SmallText(text: title),
                      SizedBox(height: 2,),
                      Row(
                        children: [
                          SmallText(text: date, fontSize: 12, color: Colors.grey,),
                          SizedBox(width: 8,),
                          SmallText(text: time, fontSize: 12, color: Colors.grey,),
                          SizedBox(width: 8,),
                          SmallText(text: length, fontSize: 12, color: Colors.grey,),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(onPressed: onTapMenu, icon: Icon(Icons.more_vert_rounded)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}