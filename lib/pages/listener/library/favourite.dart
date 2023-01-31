import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/widget/list_item.dart';
import 'package:flutter/material.dart';

import '../../../config/color.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: CustomColor.appBlue,
        ),
        title: BigText(text: 'Favourites'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
          child: Column(
            children: [
              ListItem(title: 'Title', onTap: (){}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
              ListItem(title: 'Title', onTap: (){}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
              ListItem(title: 'Title', onTap: (){}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
              ListItem(title: 'Title', onTap: (){}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
              ListItem(title: 'Title', onTap: (){}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
              ListItem(title: 'Title', onTap: (){}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
              ListItem(title: 'Title', onTap: (){}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
              ListItem(title: 'Title', onTap: (){}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
              ListItem(title: 'Title', onTap: (){}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
              ListItem(title: 'Title', onTap: (){}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
              ListItem(title: 'Title', onTap: (){}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
              ListItem(title: 'Title', onTap: (){}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
              ListItem(title: 'Title', onTap: (){}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
              ListItem(title: 'Title', onTap: (){}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
              ListItem(title: 'Title', onTap: (){}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
              ListItem(title: 'Title', onTap: (){}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
              ListItem(title: 'Title', onTap: (){}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
              ListItem(title: 'Title', onTap: (){}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
              ListItem(title: 'Title', onTap: (){}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){}),
            ],
          ),
        ),
      ),
    );
  }
}