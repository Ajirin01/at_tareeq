import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/pages/listener/home_explore/organization/popular.dart';
import 'package:at_tareeq/pages/listener/home_explore/recommended.dart';
import 'package:flutter/material.dart';

import '../config/color.dart';
import '../pages/listener/home_explore/organization/new.dart';
import '../widget/search_input.dart';

class ExploreAppBar extends StatefulWidget {
  const ExploreAppBar({Key? key}) : super(key: key);

  @override
  State<ExploreAppBar> createState() => _ExploreAppBarState();
}

class _ExploreAppBarState extends State<ExploreAppBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title:  CustomSearch(),
          automaticallyImplyLeading: false,
          bottom: TabBar(
            labelColor: CustomColor.appBlue,
            unselectedLabelColor: Colors.grey,
            indicatorColor: CustomColor.appBlue,
            indicatorWeight: 3,
            tabs: [
              Tab(
                text: 'Recommended',
              ),
              Tab(
                text: 'New Lectures',
              ),
              Tab(
                text: 'Popular Lectures',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Recommended(),
            New(),
            Popular(),
          ],
        ),
      ),
    );
  }
}