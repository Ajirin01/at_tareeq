import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/pages/listener/home_explore/organization/organization_page.dart';
import 'package:at_tareeq/pages/players/listener_audio_player.dart';
import 'package:at_tareeq/widget/list_item.dart';
import 'package:at_tareeq/widget/organization_item.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import '../../../config/color.dart';
import '../../../config/small_text.dart';
import '../../../layouts/list_menu_expandable.dart';
import '../../../widget/audio_player_menu_item.dart';
import '../../../widget/custom_page_route.dart';
import '../../../widget/grid_item.dart';
import '../../players/audio_player_app.dart';

class Recommended extends StatefulWidget {
  const Recommended({Key? key}) : super(key: key);

  @override
  State<Recommended> createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  @override
  Widget build(BuildContext context) {
    return ListMenuExpandable(widget: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        BigText(text: 'Organizations', fontSize: 18,),
        SizedBox(height: 8,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              OrganizationItem(organizationName: 'Organization Name', onTap: (){
                Navigator.of(context).push(CustomPageRoute(child: OrganizationPage()));
              }),
              SizedBox(width: 12,),
              OrganizationItem(organizationName: 'Organization Name', onTap: (){
                Navigator.of(context).push(CustomPageRoute(child: OrganizationPage()));
              }),
              SizedBox(width: 12,),
              OrganizationItem(organizationName: 'Organization Name', onTap: (){
                Navigator.of(context).push(CustomPageRoute(child: OrganizationPage()));
              }),
              SizedBox(width: 12,),
              OrganizationItem(organizationName: 'Organization Name', onTap: (){
                Navigator.of(context).push(CustomPageRoute(child: OrganizationPage()));
              }),
              SizedBox(width: 12,),
              OrganizationItem(organizationName: 'Organization Name', onTap: (){
                Navigator.of(context).push(CustomPageRoute(child: OrganizationPage()));
              }),
            ],
          ),
        ),
        SizedBox(height: 16,),
        BigText(text: 'Most Downloaded', fontSize: 18,),
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
      ],
    ),);
  }
}