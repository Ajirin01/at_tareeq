import 'package:at_tareeq/pages/players/live_audio.dart';
import 'package:at_tareeq/widget/button.dart';
import 'package:flutter/material.dart';

class HostLiveAudio extends StatefulWidget {
  const HostLiveAudio({Key? key}) : super(key: key);

  @override
  State<HostLiveAudio> createState() => _HostLiveAudioState();
}

class _HostLiveAudioState extends State<HostLiveAudio> {
  @override
  Widget build(BuildContext context) {
    return LiveAudio(bottomWidget: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey,
            child: IconButton(
              icon: Icon(
                Icons.mic_none_rounded,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ),
          Row(
            children: [
              CustomButton(text: 'End Lecture', size: Size(130, 42), onPressed: () {}),
              const SizedBox(width: 16,),
              CircleAvatar(
                backgroundColor: Colors.grey,
                child: IconButton(
                  icon: Icon(
                    Icons.share_outlined,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
