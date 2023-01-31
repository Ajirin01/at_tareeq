import 'package:at_tareeq/layouts/list_menu_expandable.dart';
import 'package:at_tareeq/pages/players/listener_live_audio.dart';
import 'package:at_tareeq/widget/list_item.dart';
import 'package:at_tareeq/widget/video_item.dart';
import 'package:flutter/material.dart';

import '../../../../widget/custom_page_route.dart';
import '../../../players/listener_video.dart';
import '../../../players/live_audio.dart';

class HappeningNow extends StatefulWidget {
  const HappeningNow({Key? key}) : super(key: key);

  @override
  State<HappeningNow> createState() => _HappeningNowState();
}

class _HappeningNowState extends State<HappeningNow> {
  @override
  Widget build(BuildContext context) {
    return ListMenuExpandable(widget: Column(
      children: [
        VideoItem(title: 'New Video', lecturer: 'Lecturer', onPressed: () {
          //Navigate to video app for test
          Navigator.of(context).push(CustomPageRoute(child: ListenerVideo()));
        },),
        VideoItem(title: 'Title', lecturer: 'Lecturer', onPressed: () {},),
      ],
    ));
  }
}