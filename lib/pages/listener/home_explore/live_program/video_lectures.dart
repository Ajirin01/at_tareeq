import 'package:at_tareeq/pages/players/listener_video.dart';
import 'package:at_tareeq/pages/players/video_player_app.dart';
import 'package:at_tareeq/widget/custom_page_route.dart';
import 'package:at_tareeq/widget/video_item.dart';
import 'package:flutter/material.dart';

class VideoLectures extends StatefulWidget {
  const VideoLectures({Key? key}) : super(key: key);

  @override
  State<VideoLectures> createState() => _VideoLecturesState();
}

class _VideoLecturesState extends State<VideoLectures> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            VideoItem(title: 'New Video', lecturer: 'Lecturer', onPressed: () {
              //Navigate to video app for test
              Navigator.of(context).push(CustomPageRoute(child: ListenerVideo()));
            },),
            VideoItem(title: 'Title', lecturer: 'Lecturer', onPressed: () {},),
            VideoItem(title: 'Title', lecturer: 'Lecturer', onPressed: () {},),
            VideoItem(title: 'Title', lecturer: 'Lecturer', onPressed: () {},),
            VideoItem(title: 'Title', lecturer: 'Lecturer', onPressed: () {},),
            VideoItem(title: 'Title', lecturer: 'Lecturer', onPressed: () {},),
            VideoItem(title: 'Title', lecturer: 'Lecturer', onPressed: () {},),
            VideoItem(title: 'Title', lecturer: 'Lecturer', onPressed: () {},),
            VideoItem(title: 'Title', lecturer: 'Lecturer', onPressed: () {},),
            VideoItem(title: 'Title', lecturer: 'Lecturer', onPressed: () {},),
            VideoItem(title: 'Title', lecturer: 'Lecturer', onPressed: () {},),
          ],
        ),
      ),
    );
  }
}