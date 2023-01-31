import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/pages/host/home/home_host.dart';
import 'package:at_tareeq/pages/host/library_host.dart';
import 'package:at_tareeq/pages/host/profile/profile_host.dart';
import 'package:flutter/material.dart';

import '../config/color.dart';

class HostBottomNav extends StatefulWidget {
  const HostBottomNav({Key? key}) : super(key: key);

  @override
  State<HostBottomNav> createState() => _HostBottomNavState();
}

class _HostBottomNavState extends State<HostBottomNav> {

  int currentIndex = 0;
  final screens = [
    HomeHost(),
    LibraryHost(),
    ProfileHost(),
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