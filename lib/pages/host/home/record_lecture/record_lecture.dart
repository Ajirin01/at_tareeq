import 'dart:io';

import 'package:at_tareeq/config/small_text.dart';
import 'package:at_tareeq/layouts/host_layout.dart';
import 'package:at_tareeq/pages/details_form.dart';
import 'package:at_tareeq/widget/custom_page_route.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sound/public/flutter_sound_recorder.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../config/color.dart';
import '../../../../widget/rec_item.dart';

class RecordLectures extends StatefulWidget {
  const RecordLectures({Key? key}) : super(key: key);

  @override
  State<RecordLectures> createState() => _RecordLecturesState();
}

class _RecordLecturesState extends State<RecordLectures> {

  final String recordLectureKey = 'record lecture';

  final recorder = FlutterSoundRecorder();
  bool isRecorderReady = false;

  String time = DateFormat('dd/MM/yyyy').format(DateTime.now());

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

    initRecorder();
  }

  @override
  void dispose(){
    controller.dispose();

    recorder.closeRecorder();

    super.dispose();
  }

  Future initRecorder() async{
    final status = await Permission.microphone.request();

    if(status != PermissionStatus.granted) {
      throw 'Microphone permission not granted';
    }

    await recorder.openRecorder();
    isRecorderReady = true;

    recorder.setSubscriptionDuration(Duration(milliseconds: 500));
  }

  Future record() async{
    await recorder.startRecorder(toFile: 'audio');
  }

  Future stop() async{
    if(!isRecorderReady) return;

    final path = await recorder.stopRecorder();
    final audioFile = File(path!);
    print('Recording audio: $audioFile');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HostLayout(
        controller: controller,
        expanded: Padding(
          padding: const EdgeInsets.fromLTRB(16, 64, 16, 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              StreamBuilder<RecordingDisposition>(
                stream: recorder.onProgress,
                builder: (context, snapshot){
                  final duration = snapshot.hasData?
                  snapshot.data!.duration
                      : Duration.zero;
                  String newDigits(DateTime n) => DateFormat('ss').format(n);
                  final twoDigitHours = newDigits(DateTime.fromMillisecondsSinceEpoch(duration.inHours.remainder(60)*1000));
                  final twoDigitMinutes = newDigits(DateTime.fromMillisecondsSinceEpoch(duration.inMinutes.remainder(60)*1000));
                  final twoDigitSeconds = newDigits(DateTime.fromMillisecondsSinceEpoch(duration.inSeconds.remainder(60)*1000));
                  return SmallText(text: '$twoDigitHours : $twoDigitMinutes : $twoDigitSeconds', textAlign: TextAlign.center, color: Colors.white,);
                },
              ),
              SizedBox(height: 24,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () async{
                          // recorder.isPaused? await recorder.resumeRecorder() : await recorder.pauseRecorder();
                          // setState((){});
                        },//pause recording
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20,
                          child: recorder.isPaused? Icon(Icons.play_arrow, color: Colors.grey[800],) : Icon(Icons.pause, color: Colors.grey[800],),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () async{
                          if(recorder.isRecording){
                            await stop();
                            Navigator.of(context).push(CustomPageRoute(child: DetailsForm(keyValue: recordLectureKey, buttonText: 'Upload', onPressed: () {
                              //
                            },)));
                          }else {
                            await record();
                          }
                          setState((){});
                        },//Start and stop recording
                        child: CircleAvatar(
                          backgroundColor: recorder.isRecording? Colors.redAccent : Colors.grey,
                          radius: 50,
                          child: CircleAvatar(
                            backgroundColor: recorder.isRecording? Colors.red : Colors.white,
                            radius: 42,
                            child: recorder.isRecording? Icon(Icons.stop, color: Colors.white, size: 50,): Icon(Icons.mic_rounded, color: Colors.red,size: 50,),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: CustomColor.appBlue,
                        radius: 20,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 24,),
              SmallText(text: 'New Recording', textAlign: TextAlign.center, color: Colors.white,),
              SizedBox(height: 24,),
              SmallText(text: time, textAlign: TextAlign.center, color: Colors.white,),
            ],
          ),
        ),
        listHeader: 'Recent Recordings',
        listColumn: Column(
          children: [
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
            RecItem(title: 'Title', onTap: (){}, onTapMenu: (){}),
          ],
        ),
      ),
    );
  }
}