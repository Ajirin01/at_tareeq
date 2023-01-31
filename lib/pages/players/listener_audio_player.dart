import 'package:at_tareeq/pages/players/audio_player_app.dart';
import 'package:at_tareeq/widget/audio_player_menu_item.dart';
import 'package:flutter/material.dart';

class ListenerAudioPlayer extends StatefulWidget {
  const ListenerAudioPlayer({Key? key}) : super(key: key);

  @override
  State<ListenerAudioPlayer> createState() => _ListenerAudioPlayerState();
}

class _ListenerAudioPlayerState extends State<ListenerAudioPlayer> {
  @override
  Widget build(BuildContext context) {
    return AudioPlayerApp(menuItem: _item());
  }

  Widget _item() => Column(
    children: [
      AudioPlayerMenuItem(icon: Icons.watch_later_outlined, text: 'Play Later'),
      AudioPlayerMenuItem(icon: Icons.playlist_add, text: 'Add to Playlist'),
      AudioPlayerMenuItem(icon: Icons.person_rounded, text: 'View Host'),
      AudioPlayerMenuItem(icon: Icons.download_rounded, text: 'Download'),
      AudioPlayerMenuItem(icon: Icons.share_outlined, text: 'Share')
    ],
  );
}
