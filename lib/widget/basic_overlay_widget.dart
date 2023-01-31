import 'package:at_tareeq/config/small_text.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class BasicOverlayWidget extends StatelessWidget {
  const BasicOverlayWidget({Key? key, required this.controller}) : super(key: key);

  final VideoPlayerController controller;

  @override
  Widget build(BuildContext context) => GestureDetector(
    behavior: HitTestBehavior.opaque,
    onTap: () => controller.value.isPlaying?
    controller.pause() : controller.play(),
    child: Stack(
      children: [
        buildPlay(),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: buildIndicator(),
        ),
      ],
    ),
  );

  Widget buildInfo() => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 32,
                child: Image.asset('assets/empty.png', fit: BoxFit.cover,),
              ),
              const SizedBox(width: 8,),
              SmallText(text: 'Lecturer'),
            ],
          ),
          const SizedBox(height: 16,),
          Row(
            children: [
              Icon(
                Icons.topic_outlined
              ),
              const SizedBox(width: 8,),
              SmallText(text: 'Topic'),
            ],
          ),
        ],
      ),
      Column(
        children: [
          Container(
            color: Colors.red,
            child: SmallText(text: 'LIVE'),
          ),
          const SizedBox(height: 16,),
          Container(
            color: Colors.red,
            child: Row(
              children: [
                Icon(
                  Icons.people_alt_rounded
                ),
                SmallText(text: '150'),
              ],
            ),
          ),
        ],
      ),
    ],
  );

  Widget buildIndicator() => VideoProgressIndicator(
    controller,
    allowScrubbing: true,
  );

  Widget buildPlay() => controller.value.isPlaying?
  Container()
      : Container(
      alignment: Alignment.center,
      color: Colors.black26,
      child: Icon(Icons.play_arrow, color: Colors.white, size: 80,)
  );
}