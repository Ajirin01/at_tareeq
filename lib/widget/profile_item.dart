import 'package:at_tareeq/config/small_text.dart';
import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  ProfileItem({Key? key,
    required this.icon,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 0,
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(icon, color: Colors.black,),
                  SizedBox(width: 8,),
                  SmallText(text: text)
                ],
              ),
              Icon(Icons.arrow_forward_ios_outlined, color: Colors.black,),
            ],
          ),
        ),
      ),
    );
  }
}