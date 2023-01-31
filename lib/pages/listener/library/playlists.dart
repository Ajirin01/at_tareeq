import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/config/small_text.dart';
import 'package:at_tareeq/widget/playlist_item.dart';
import 'package:flutter/material.dart';

import '../../../config/color.dart';

class Playlist extends StatefulWidget {
  const Playlist({Key? key}) : super(key: key);

  @override
  State<Playlist> createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: CustomColor.appBlue,
        ),
        title: BigText(text: 'Playlists'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
                  child: Row(
                    children: [
                      Container(
                        clipBehavior: Clip.antiAlias,
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.black
                        ),
                        child: Icon(Icons.add, color: Colors.white, size: 48,),
                      ),
                      SizedBox(width: 16,),
                      SmallText(text: 'New Playlist'),
                    ],
                  ),
                ),
              ),
              PlaylistItem(title: 'Title', onTap: (){}, onTapMenu: (){}),
              PlaylistItem(title: 'Title', onTap: (){}, onTapMenu: (){}),
              PlaylistItem(title: 'Title', onTap: (){}, onTapMenu: (){}),
              PlaylistItem(title: 'Title', onTap: (){}, onTapMenu: (){}),
            ],
          ),
        ),
      ),
    );
  }
}