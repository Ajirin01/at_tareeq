import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/pages/listener/library/download.dart';
import 'package:at_tareeq/pages/listener/library/favourite.dart';
import 'package:at_tareeq/pages/listener/library/history.dart';
import 'package:at_tareeq/pages/listener/library/play_later.dart';
import 'package:at_tareeq/pages/listener/library/playlists.dart';
import 'package:at_tareeq/widget/custom_page_route.dart';
import 'package:at_tareeq/widget/profile_item.dart';
import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BigText(text: 'Library'),
              SizedBox(height: 64,),
              ProfileItem(icon: Icons.play_circle_fill_rounded, text: 'History', onTap: () {
                Navigator.of(context).push(CustomPageRoute(child: History()));
              }),
              Divider(height: 6,),
              ProfileItem(icon: Icons.bookmark_rounded, text: 'Play Later', onTap: (){
                Navigator.of(context).push(CustomPageRoute(child: PlayLater()));
              }),
              Divider(height: 6,),
              ProfileItem(icon: Icons.playlist_play_rounded, text: 'Playlists', onTap: (){
                Navigator.of(context).push(CustomPageRoute(child: Playlist()));
              }),
              Divider(height: 6,),
              ProfileItem(icon: Icons.favorite_rounded, text: 'Favourite', onTap: (){
                Navigator.of(context).push(CustomPageRoute(child: Favourite()));
              }),
              Divider(height: 6,),
              ProfileItem(icon: Icons.save_alt_rounded, text: 'Downloads', onTap: (){
                Navigator.of(context).push(CustomPageRoute(child: Downloads()));
              }),
            ],
          ),
        ),
      ),
    );
  }
}