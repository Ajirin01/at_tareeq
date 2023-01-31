import 'package:at_tareeq/config/small_text.dart';
import 'package:flutter/material.dart';

class AudioPlayerMenuItem extends StatelessWidget {
  const AudioPlayerMenuItem({Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(width: 16,),
            SmallText(text: text, color: Colors.white,)
          ],
        ),
      ),
    );
  }
}
