import 'package:at_tareeq/widget/list_item.dart';
import 'package:flutter/material.dart';

class Live extends StatefulWidget {
  const Live({Key? key}) : super(key: key);

  @override
  State<Live> createState() => _LiveState();
}

class _LiveState extends State<Live> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListItem(title: 'Title', onTap: () {}, lecturer: 'Lecturer', onTapPlay: () {}, onTapMenu: () {}),
          ListItem(title: 'Title', onTap: () {}, lecturer: 'Lecturer', onTapPlay: () {}, onTapMenu: () {}),
          ListItem(title: 'Title', onTap: () {}, lecturer: 'Lecturer', onTapPlay: () {}, onTapMenu: () {}),
          ListItem(title: 'Title', onTap: () {}, lecturer: 'Lecturer', onTapPlay: () {}, onTapMenu: () {}),
          ListItem(title: 'Title', onTap: () {}, lecturer: 'Lecturer', onTapPlay: () {}, onTapMenu: () {}),
          ListItem(title: 'Title', onTap: () {}, lecturer: 'Lecturer', onTapPlay: () {}, onTapMenu: () {}),
          ListItem(title: 'Title', onTap: () {}, lecturer: 'Lecturer', onTapPlay: () {}, onTapMenu: () {}),
          ListItem(title: 'Title', onTap: () {}, lecturer: 'Lecturer', onTapPlay: () {}, onTapMenu: () {}),
          ListItem(title: 'Title', onTap: () {}, lecturer: 'Lecturer', onTapPlay: () {}, onTapMenu: () {}),
          ListItem(title: 'Title', onTap: () {}, lecturer: 'Lecturer', onTapPlay: () {}, onTapMenu: () {}),
          ListItem(title: 'Title', onTap: () {}, lecturer: 'Lecturer', onTapPlay: () {}, onTapMenu: () {}),
          ListItem(title: 'Title', onTap: () {}, lecturer: 'Lecturer', onTapPlay: () {}, onTapMenu: () {}),
        ],
      ),
    );
  }
}
