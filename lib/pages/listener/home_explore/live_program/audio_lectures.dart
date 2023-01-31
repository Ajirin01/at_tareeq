import 'package:at_tareeq/pages/players/listener_live_audio.dart';
import 'package:at_tareeq/pages/players/live_audio.dart';
import 'package:at_tareeq/widget/custom_page_route.dart';
import 'package:at_tareeq/widget/list_item.dart';
import 'package:flutter/material.dart';

class AudioLectures extends StatefulWidget {
  const AudioLectures({Key? key}) : super(key: key);

  @override
  State<AudioLectures> createState() => _AudioLecturesState();
}

class _AudioLecturesState extends State<AudioLectures> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ListItem(title: 'Live Audio', onTap: (){
              //Navigate to Live audio for test
              Navigator.of(context).push(CustomPageRoute(child: ListenerLiveAudio()));
            }, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
            ListItem(title: 'Live Audio', onTap: (){
              //Navigate to Live audio for test
              Navigator.of(context).push(CustomPageRoute(child: ListenerLiveAudio()));
            }, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
            ListItem(title: 'Live Audio', onTap: (){
              //Navigate to Live audio for test
              Navigator.of(context).push(CustomPageRoute(child: ListenerLiveAudio()));
            }, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
            ListItem(title: 'Live Audio', onTap: (){
              //Navigate to Live audio for test
              Navigator.of(context).push(CustomPageRoute(child: ListenerLiveAudio()));
            }, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
            ListItem(title: 'Live Audio', onTap: (){
              //Navigate to Live audio for test
              Navigator.of(context).push(CustomPageRoute(child: ListenerLiveAudio()));
            }, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
            ListItem(title: 'Live Audio', onTap: (){
              //Navigate to Live audio for test
              Navigator.of(context).push(CustomPageRoute(child: ListenerLiveAudio()));
            }, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
            ListItem(title: 'Live Audio', onTap: (){
              //Navigate to Live audio for test
              Navigator.of(context).push(CustomPageRoute(child: ListenerLiveAudio()));
            }, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
            ListItem(title: 'Live Audio', onTap: (){
              //Navigate to Live audio for test
              Navigator.of(context).push(CustomPageRoute(child: ListenerLiveAudio()));
            }, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
            ListItem(title: 'Live Audio', onTap: (){
              //Navigate to Live audio for test
              Navigator.of(context).push(CustomPageRoute(child: ListenerLiveAudio()));
            }, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
            ListItem(title: 'Live Audio', onTap: (){
              //Navigate to Live audio for test
              Navigator.of(context).push(CustomPageRoute(child: ListenerLiveAudio()));
            }, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
            ListItem(title: 'Live Audio', onTap: (){
              //Navigate to Live audio for test
              Navigator.of(context).push(CustomPageRoute(child: ListenerLiveAudio()));
            }, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
            ListItem(title: 'Live Audio', onTap: (){
              //Navigate to Live audio for test
              Navigator.of(context).push(CustomPageRoute(child: ListenerLiveAudio()));
            }, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
            ListItem(title: 'Live Audio', onTap: (){
              //Navigate to Live audio for test
              Navigator.of(context).push(CustomPageRoute(child: ListenerLiveAudio()));
            }, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
            ListItem(title: 'Live Audio', onTap: (){
              //Navigate to Live audio for test
              Navigator.of(context).push(CustomPageRoute(child: ListenerLiveAudio()));
            }, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
            ListItem(title: 'Live Audio', onTap: (){
              //Navigate to Live audio for test
              Navigator.of(context).push(CustomPageRoute(child: ListenerLiveAudio()));
            }, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
            ListItem(title: 'Live Audio', onTap: (){
              //Navigate to Live audio for test
              Navigator.of(context).push(CustomPageRoute(child: ListenerLiveAudio()));
            }, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
            ListItem(title: 'Live Audio', onTap: (){
              //Navigate to Live audio for test
              Navigator.of(context).push(CustomPageRoute(child: ListenerLiveAudio()));
            }, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
            ListItem(title: 'Live Audio', onTap: (){
              //Navigate to Live audio for test
              Navigator.of(context).push(CustomPageRoute(child: ListenerLiveAudio()));
            }, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
            ListItem(title: 'Live Audio', onTap: (){
              //Navigate to Live audio for test
              Navigator.of(context).push(CustomPageRoute(child: ListenerLiveAudio()));
            }, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
          ],
        ),
      ),
    );
  }
}