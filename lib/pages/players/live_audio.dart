import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/config/color.dart';
import 'package:at_tareeq/config/small_text.dart';
import 'package:at_tareeq/widget/button.dart';
import 'package:at_tareeq/widget/interest_item.dart';
import 'package:flutter/material.dart';

class LiveAudio extends StatefulWidget {
  const LiveAudio({Key? key,
    required this.bottomWidget,
  }) : super(key: key);

  final Widget? bottomWidget;

  @override
  State<LiveAudio> createState() => _LiveAudioState();
}

class _LiveAudioState extends State<LiveAudio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: CustomColor.appBlue
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: Image.asset(
                    'assets/pic_two.png',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 16,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BigText(text: 'Title', fontSize: 16, color: Colors.black,),
                          const SizedBox(height: 6,),
                          SmallText(text: 'Lecturer', fontSize: 15,),
                        ],
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.more_vert_rounded
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32,),
            Expanded(child: GridView.count(
              physics: AlwaysScrollableScrollPhysics(),
              crossAxisCount: 4,
              mainAxisSpacing: 24,
              children: [
                InterestItem(radius: 24, image: 'assets/pic_one.png', text: 'Name', onTap: () {}),
                InterestItem(radius: 24, image: 'assets/pic_one.png', text: 'Name', onTap: () {}),
                InterestItem(radius: 24, image: 'assets/pic_one.png', text: 'Name', onTap: () {}),
                InterestItem(radius: 24, image: 'assets/pic_one.png', text: 'Name', onTap: () {}),
                InterestItem(radius: 24, image: 'assets/pic_one.png', text: 'Name', onTap: () {}),
                InterestItem(radius: 24, image: 'assets/pic_one.png', text: 'Name', onTap: () {}),
                InterestItem(radius: 24, image: 'assets/pic_one.png', text: 'Name', onTap: () {}),
                InterestItem(radius: 24, image: 'assets/pic_one.png', text: 'Name', onTap: () {}),
                InterestItem(radius: 24, image: 'assets/pic_one.png', text: 'Name', onTap: () {}),
                InterestItem(radius: 24, image: 'assets/pic_one.png', text: 'Name', onTap: () {}),
                InterestItem(radius: 24, image: 'assets/pic_one.png', text: 'Name', onTap: () {}),
                InterestItem(radius: 24, image: 'assets/pic_one.png', text: 'Name', onTap: () {}),
                InterestItem(radius: 24, image: 'assets/pic_one.png', text: 'Name', onTap: () {}),
                InterestItem(radius: 24, image: 'assets/pic_one.png', text: 'Name', onTap: () {}),
                InterestItem(radius: 24, image: 'assets/pic_one.png', text: 'Name', onTap: () {}),
                InterestItem(radius: 24, image: 'assets/pic_one.png', text: 'Name', onTap: () {}),
                InterestItem(radius: 24, image: 'assets/pic_one.png', text: 'Name', onTap: () {}),
                InterestItem(radius: 24, image: 'assets/pic_one.png', text: 'Name', onTap: () {}),
                InterestItem(radius: 24, image: 'assets/pic_one.png', text: 'Name', onTap: () {}),
              ],
            ),),
          ],
        ),
      ),
      bottomSheet: widget.bottomWidget,
    );
  }
}
