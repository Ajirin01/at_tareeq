import 'package:at_tareeq/pages/listener/home_explore/live_program/audio_lectures.dart';
import 'package:at_tareeq/pages/listener/home_explore/live_program/video_lectures.dart';
import 'package:flutter/material.dart';

import '../config/big_text.dart';
import '../config/color.dart';
import '../pages/listener/home_explore/live_program/happening_now.dart';

class LiveProgramAppBar extends StatefulWidget {
  const LiveProgramAppBar({Key? key}) : super(key: key);

  @override
  State<LiveProgramAppBar> createState() => _LiveProgramAppBarState();
}

class _LiveProgramAppBarState extends State<LiveProgramAppBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: BigText(text: 'Live Program'),
            centerTitle: true,
            iconTheme: IconThemeData(
                color: CustomColor.appBlue
            ),
            bottom: TabBar(
              labelColor: CustomColor.appBlue,
              unselectedLabelColor: Colors.grey,
              indicatorColor: CustomColor.appBlue,
              indicatorWeight: 3,
              tabs: [
                Tab(
                  text: 'Happening Now',
                ),
                Tab(
                  text: 'Audio Lectures',
                ),
                Tab(
                  text: 'Video Lectures',
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              HappeningNow(),
              AudioLectures(),
              VideoLectures(),
            ],
          ),
        )
    );
  }
}