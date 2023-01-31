import 'package:at_tareeq/config/small_text.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../widget/video_player_widget.dart';

class VideoPlayerApp extends StatefulWidget {
  const VideoPlayerApp({Key? key,
    required this.topWidget,
    required this.bottomWidget,
  }) : super(key: key);

  final Widget topWidget, bottomWidget;

  @override
  State<VideoPlayerApp> createState() => _VideoPlayerAppState();
}

class _VideoPlayerAppState extends State<VideoPlayerApp> {

  final asset = 'assets/sample.mp4';

  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(asset)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((value) => controller.play());
  }


  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black87, Colors.transparent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black87,
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  VideoPlayerWidget(controller: controller),
                ],
              ),
              Positioned(
                  top: 80,
                  left: 16,
                  child: widget.topWidget
              ),
              Positioned(
                  top: 80,
                  right: 16,
                  child: Column(
                    children: [
                      Container(
                        width: 52,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.red
                        ),
                        child: SmallText(text: 'LIVE',textAlign: TextAlign.center, color: Colors.white, fontSize: 14,),
                      ),
                      const SizedBox(height: 16,),
                      Container(
                        width: 52,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                            color: Colors.red
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.people_alt_rounded, color: Colors.white, size: 18,),
                            SmallText(text: '150', textAlign: TextAlign.center, color: Colors.white, fontSize: 14,),
                          ],
                        ),
                      ),
                    ],
                  )
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: widget.bottomWidget
              ),
            ],
          ),
        ),
      ),
    );
  }
}
