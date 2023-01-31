import 'package:at_tareeq/config/small_text.dart';
import 'package:flutter/material.dart';

class CommentItem extends StatelessWidget {
  const CommentItem({Key? key,
    this.image = const AssetImage(
        'assets/empty.png'
    ),
    this.name = 'Name',
    this.comment = 'Comment',
    this.textColor = Colors.white,
  }) : super(key: key);

  final ImageProvider<Object>? image;
  final String name, comment;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.transparent,
            backgroundImage: image,
          ),
          const SizedBox(width: 8,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SmallText(text: name, color: textColor,),
              const SizedBox(height: 4,),
              SmallText(text: comment, color: textColor, fontSize: 14,),
            ],
          ),
        ],
      ),
    );
  }
}
