import 'package:at_tareeq/pages/players/audio_player_app.dart';
import 'package:at_tareeq/widget/audio_player_menu_item.dart';
import 'package:flutter/material.dart';

class HostAudioPlayer extends StatefulWidget {
  const HostAudioPlayer({Key? key}) : super(key: key);

  @override
  State<HostAudioPlayer> createState() => _HostAudioPlayerState();
}

class _HostAudioPlayerState extends State<HostAudioPlayer> {

  @override
  Widget build(BuildContext context) {
    return AudioPlayerApp(menuItem: _items(),);
  }

  Widget _items() => Column(
    children: [
      AudioPlayerMenuItem(icon: Icons.delete_outline_rounded, text: 'Delete'),
      AudioPlayerMenuItem(icon: Icons.edit_outlined, text: 'Edit Details'),
      AudioPlayerMenuItem(icon: Icons.share_outlined, text: 'Share')
    ],
  );
}
