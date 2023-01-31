import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/pages/players/video_player_app.dart';
import 'package:at_tareeq/widget/comment_item.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import '../../config/small_text.dart';

class HostVideo extends StatefulWidget {
  const HostVideo({Key? key}) : super(key: key);

  @override
  State<HostVideo> createState() => _HostVideoState();
}

class _HostVideoState extends State<HostVideo> {

  static bool isOpened = false;
  ExpandableController controller = ExpandableController(
    initialExpanded: isOpened,
  );

  @override
  void initState(){
    super.initState();

    controller.addListener(() {
      isOpened = !isOpened;
    });
  }

  @override
  void dispose(){
    controller.dispose();

    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return VideoPlayerApp(
        topWidget: Container(),
        bottomWidget: _expandable(),
    );
  }

  Widget _infoHost() => Stack(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(
                        'assets/empty.png',
                      ),
                    ),
                    const SizedBox(width: 8,),
                    SmallText(text: 'Lecturer', color: Colors.white,),
                  ],
                ),
                const SizedBox(height: 8,),
                Row(
                  children: [
                    Icon(
                      Icons.topic_outlined,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 8,),
                    SmallText(text: 'Topic', color: Colors.white,),
                  ],
                ),
              ],
            ),
            IconButton(
              icon: Icon(
                Icons.message_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                controller.toggle();
              },
            ),
          ],
        ),
      ),
    ],
  );

  Widget _expandable() => Stack(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ExpandablePanel(
            controller: controller,
            theme: ExpandableThemeData(
              tapBodyToCollapse: false,
              tapBodyToExpand: false,
            ),
            collapsed: _infoHost(),
            expanded: _comments(),
            builder: (_, collapsed, expanded) => Expandable(
                collapsed: collapsed,
                expanded: expanded
            ),
          ),
        ],
      )
    ],
  );

  Widget _comments() => Stack(
    children: [
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(12), topLeft: Radius.circular(12)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(topRight: Radius.circular(12), topLeft: Radius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BigText(text: 'Comments', fontSize: 16, color: Colors.black,),
                    IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        controller.toggle();
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 16,),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: 10,
                    maxHeight: 220,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        CommentItem(textColor: Colors.black,),
                        CommentItem(textColor: Colors.black,),
                        CommentItem(textColor: Colors.black,),
                        CommentItem(textColor: Colors.black,),
                        CommentItem(textColor: Colors.black,),
                        CommentItem(textColor: Colors.black,),
                        CommentItem(textColor: Colors.black,),
                        CommentItem(textColor: Colors.black,),
                        CommentItem(textColor: Colors.black,),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )
    ],
  );
}
