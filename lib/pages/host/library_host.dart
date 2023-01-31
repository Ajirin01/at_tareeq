import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/pages/players/audio_player_app.dart';
import 'package:at_tareeq/pages/players/host_audio_player.dart';
import 'package:at_tareeq/widget/custom_page_route.dart';
import 'package:at_tareeq/widget/rec_item.dart';
import 'package:flutter/material.dart';

class LibraryHost extends StatefulWidget {
  const LibraryHost({Key? key}) : super(key: key);

  @override
  State<LibraryHost> createState() => _LibraryHostState();
}

class _LibraryHostState extends State<LibraryHost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: BigText(text: 'Library'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
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
      ),
    );
  }
}
