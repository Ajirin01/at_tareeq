import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/layouts/list_menu_expandable.dart';
import 'package:at_tareeq/pages/players/listener_audio_player.dart';
import 'package:at_tareeq/widget/grid_item.dart';
import 'package:at_tareeq/widget/list_item.dart';
import 'package:flutter/material.dart';

import '../../../widget/custom_page_route.dart';
import '../../players/audio_player_app.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return ListMenuExpandable(widget: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        BigText(text: 'For you', fontSize: 18,),
        SizedBox(height: 8,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              GridItem(title: 'New Audio', onTap: (){
                // Navigate to audio player for test
                Navigator.of(context).push(CustomPageRoute(child: ListenerAudioPlayer()));
              }, lecturer: 'lecturer'),
              SizedBox(width: 12,),
              GridItem(title: 'Title', onTap: (){}, lecturer: 'lecturer'),
              SizedBox(width: 12,),
              GridItem(title: 'Title', onTap: (){}, lecturer: 'lecturer'),
              SizedBox(width: 12,),
              GridItem(title: 'Title', onTap: (){}, lecturer: 'lecturer'),
              SizedBox(width: 12,),
              GridItem(title: 'Title', onTap: (){}, lecturer: 'lecturer'),
              SizedBox(width: 12,),
              GridItem(title: 'Title', onTap: (){}, lecturer: 'lecturer'),
            ],
          ),
        ),
        SizedBox(height: 16,),
        BigText(text: 'Recommended', fontSize: 18,),
        SizedBox(height: 8,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              GridItem(title: 'Title', onTap: (){}, lecturer: 'lecturer'),
              SizedBox(width: 12,),
              GridItem(title: 'Title', onTap: (){}, lecturer: 'lecturer'),
              SizedBox(width: 12,),
              GridItem(title: 'Title', onTap: (){}, lecturer: 'lecturer'),
              SizedBox(width: 12,),
              GridItem(title: 'Title', onTap: (){}, lecturer: 'lecturer'),
              SizedBox(width: 12,),
              GridItem(title: 'Title', onTap: (){}, lecturer: 'lecturer'),
              SizedBox(width: 12,),
              GridItem(title: 'Title', onTap: (){}, lecturer: 'lecturer'),
            ],
          ),
        ),
        SizedBox(height: 16,),
        BigText(text: 'Popular', fontSize: 18,),
        SizedBox(height: 8,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              GridItem(title: 'Title', onTap: (){}, lecturer: 'lecturer'),
              SizedBox(width: 12,),
              GridItem(title: 'Title', onTap: (){}, lecturer: 'lecturer'),
              SizedBox(width: 12,),
              GridItem(title: 'Title', onTap: (){}, lecturer: 'lecturer'),
              SizedBox(width: 12,),
              GridItem(title: 'Title', onTap: (){}, lecturer: 'lecturer'),
              SizedBox(width: 12,),
              GridItem(title: 'Title', onTap: (){}, lecturer: 'lecturer'),
              SizedBox(width: 12,),
              GridItem(title: 'Title', onTap: (){}, lecturer: 'lecturer'),
            ],
          ),
        ),
      ],
    ));
  }
}