import 'package:at_tareeq/config/small_text.dart';
import 'package:flutter/material.dart';

class HomeHostItem extends StatelessWidget {
  HomeHostItem({Key? key,
    required this.icon,
    required this.text,
    this.iconColor = Colors.green,
    required this.onTap,
  }) : super(key: key);

  IconData icon;
  final String text;
  Color iconColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 120,
        padding: EdgeInsets.fromLTRB(16, 24, 16, 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey[200],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, color: iconColor, size: 52,),
            SizedBox(height: 6,),
            SmallText(text: text, fontSize: 13, textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }
}