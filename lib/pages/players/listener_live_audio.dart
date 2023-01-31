import 'package:at_tareeq/pages/players/live_audio.dart';
import 'package:flutter/material.dart';

import '../../widget/button.dart';

class ListenerLiveAudio extends StatefulWidget {
  const ListenerLiveAudio({Key? key}) : super(key: key);

  @override
  State<ListenerLiveAudio> createState() => _ListenerLiveAudioState();
}

class _ListenerLiveAudioState extends State<ListenerLiveAudio> {
  @override
  Widget build(BuildContext context) {
    return LiveAudio(bottomWidget: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomButton(text: 'Leave', size: Size(120, 42), onPressed: () {}),
          Row(
            children: [
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
              const SizedBox(width: 24,),
              CircleAvatar(
                backgroundColor: Colors.grey,
                child: IconButton(
                  icon: Icon(
                    Icons.favorite_outline_rounded,
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
