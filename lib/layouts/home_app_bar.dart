import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/config/small_text.dart';
import 'package:at_tareeq/layouts/live_program_app_bar.dart';
import 'package:at_tareeq/pages/listener/home_explore/routine_lectures.dart';
import 'package:at_tareeq/pages/listener/home_explore/special_lectures.dart';
import 'package:at_tareeq/widget/custom_page_route.dart';
import 'package:flutter/material.dart';

import '../config/color.dart';
import '../pages/listener/home_explore/home.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: BigText(text: 'Hi User,'),
          automaticallyImplyLeading: false,
          actions: [FlatButton.icon(
              onPressed: (){
                Navigator.of(context).push(CustomPageRoute(child: LiveProgramAppBar()));
              },
              icon: Icon(Icons.online_prediction_outlined),
              label: SmallText(text: 'Live Program')
          ),],
          bottom: TabBar(
            labelColor: CustomColor.appBlue,
            unselectedLabelColor: Colors.grey,
            indicatorColor: CustomColor.appBlue,
            indicatorWeight: 3,
            tabs: [
              Tab(
                text: 'Listen Now',
              ),
              Tab(
                text: 'Routine Lectures',
              ),
              Tab(
                text: 'Special Lectures',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HomePage(),
            RoutineLectures(),
            SpecialLectures(),
          ],
        ),
      ),
    );
  }
}
