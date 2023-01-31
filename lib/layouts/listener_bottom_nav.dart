import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/layouts/explore_app_bar.dart';
import 'package:at_tareeq/layouts/home_app_bar.dart';
import 'package:at_tareeq/pages/listener/home_explore/recommended.dart';
import 'package:at_tareeq/pages/listener/library/library_page.dart';
import 'package:at_tareeq/pages/listener/profile/profile.dart';
import 'package:flutter/material.dart';

import '../config/color.dart';

class ListenerBottomNav extends StatefulWidget {
  const ListenerBottomNav({Key? key, required this.keyValue}) : super(key: key);

  final String keyValue;

  @override
  State<ListenerBottomNav> createState() => _ListenerBottomNavState();
}

class _ListenerBottomNavState extends State<ListenerBottomNav> {

  int currentIndex = 0;
  final screens = [
    HomeAppBar(),
    ExploreAppBar(),
    LibraryPage(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(18), topLeft: Radius.circular(18)
          ),
        ),
        height: 60,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18), topRight: Radius.circular(18),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
            iconSize: 28,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined,),
                  label: 'Home',
                  backgroundColor: CustomColor.appBlue
              ),
              BottomNavigationBarItem(icon: Icon(Icons.search_outlined,),
                  label: 'Explore',
                  backgroundColor: CustomColor.appBlue
              ),
              BottomNavigationBarItem(icon: Icon(Icons.library_add_outlined,),
                  label: 'Library',
                  backgroundColor: CustomColor.appBlue
              ),
              BottomNavigationBarItem(icon: Icon(Icons.person_outline,),
                  label: 'Profile',
                  backgroundColor: CustomColor.appBlue
              ),

            ],),
        ),
      ),
    );
  }
}
