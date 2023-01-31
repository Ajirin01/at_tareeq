import 'package:at_tareeq/layouts/host_layout.dart';
import 'package:at_tareeq/pages/details_form.dart';
import 'package:at_tareeq/pages/host/home/record_lecture/record_lecture.dart';
import 'package:at_tareeq/pages/host/home/upload_lecture/upload_lecture.dart';
import 'package:at_tareeq/pages/players/host_live_audio.dart';
import 'package:at_tareeq/pages/players/host_video.dart';
import 'package:at_tareeq/widget/custom_page_route.dart';
import 'package:at_tareeq/widget/home_host_item.dart';
import 'package:at_tareeq/widget/rec_item.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import '../../players/audio_player_app.dart';
import '../../players/host_audio_player.dart';

class HomeHost extends StatefulWidget {
  const HomeHost({Key? key}) : super(key: key);

  @override
  State<HomeHost> createState() => _HomeHostState();
}

class _HomeHostState extends State<HomeHost> {

  final String liveAudioKey = 'live audio';
  final String liveVideoKey = 'live video';

  static bool isOpened = true;
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
    return Scaffold(
      body: HostLayout(
        header: 'Hi User,',
        listHeader: 'Recent Upload',
        controller: controller,
        expanded: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HomeHostItem(icon: Icons.mic_none_rounded, text: 'Record Lecture', onTap: () {
                  Navigator.of(context).push(CustomPageRoute(child: RecordLectures()));
                },),
                HomeHostItem(icon: Icons.upload_rounded, text: 'Upload Lecture', onTap: () {
                  Navigator.of(context).push(CustomPageRoute(child: UploadFile()));
                },),
              ],
            ),
            SizedBox(height: 32,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HomeHostItem(icon: Icons.record_voice_over_outlined, iconColor: Colors.red, text: 'Live Audio', onTap: () {
                  Navigator.of(context).push(CustomPageRoute(child: DetailsForm(keyValue: liveAudioKey, buttonText: 'Start Live', onPressed: () {
                    Navigator.of(context).push(CustomPageRoute(child: HostLiveAudio()));
                  },)));
                },),
                HomeHostItem(icon: Icons.videocam_outlined, iconColor: Colors.red, text: 'Live Video', onTap: () {
                  Navigator.of(context).push(CustomPageRoute(child: DetailsForm(keyValue: liveVideoKey, buttonText: 'Start Live', onPressed: () {
                    //Navigate to video for test
                    Navigator.of(context).push(CustomPageRoute(child: HostVideo()));
                  },)));
                },),
              ],
            ),
          ],
        ),
        listColumn: Column(
          children: [
            RecItem(title: 'New Audio', onTap: (){
              // Navigate to audio player for test
              Navigator.of(context).push(CustomPageRoute(child: HostAudioPlayer()));
            }, onTapMenu: (){}),
            RecItem(title: 'Title', onTap: (){}, onTapMenu: (){}),
            RecItem(title: 'Title', onTap: (){}, onTapMenu: (){}),
            RecItem(title: 'Title', onTap: (){}, onTapMenu: (){}),
            RecItem(title: 'Title', onTap: (){}, onTapMenu: (){}),
            RecItem(title: 'Title', onTap: (){}, onTapMenu: (){}),
            RecItem(title: 'Title', onTap: (){}, onTapMenu: (){}),
            RecItem(title: 'Title', onTap: (){}, onTapMenu: (){}),
            RecItem(title: 'Title', onTap: (){}, onTapMenu: (){}),
            RecItem(title: 'Title', onTap: (){}, onTapMenu: (){}),
            RecItem(title: 'Title', onTap: (){}, onTapMenu: (){}),
            RecItem(title: 'Title', onTap: (){}, onTapMenu: (){}),
            RecItem(title: 'Title', onTap: (){}, onTapMenu: (){}),
            RecItem(title: 'Title', onTap: (){}, onTapMenu: (){}),
            RecItem(title: 'Title', onTap: (){}, onTapMenu: (){}),
            RecItem(title: 'Title', onTap: (){}, onTapMenu: (){}),
          ],
        ),
      ),
    );
  }
}