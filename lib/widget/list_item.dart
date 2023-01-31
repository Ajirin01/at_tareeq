import 'package:at_tareeq/config/color.dart';
import 'package:at_tareeq/config/small_text.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  ListItem({Key? key,
    this.image = 'assets/pic_one.png',
    required this.title,
    required this.onTap,
    required this.lecturer,
    required this.onTapPlay,
    required this.onTapMenu,
  }) : super(key: key);

  final String image;
  final String title;
  final String lecturer;
  final VoidCallback onTap;
  final VoidCallback onTapPlay;
  final VoidCallback onTapMenu;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.symmetric(vertical: 2, horizontal: 0),
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
                      SizedBox(height: 4,),
                      SmallText(text: lecturer, fontSize: 14, color: Colors.grey,),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(onPressed: onTapPlay, icon: Icon(Icons.play_circle_fill_rounded, color: CustomColor.appPurple, size: 32,)),
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