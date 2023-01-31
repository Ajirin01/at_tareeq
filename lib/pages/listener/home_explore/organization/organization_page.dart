import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/config/color.dart';
import 'package:at_tareeq/config/small_text.dart';
import 'package:at_tareeq/pages/listener/home_explore/organization/live.dart';
import 'package:at_tareeq/pages/listener/home_explore/organization/new.dart';
import 'package:at_tareeq/pages/listener/home_explore/organization/popular.dart';
import 'package:at_tareeq/widget/button.dart';
import 'package:flutter/material.dart';

class OrganizationPage extends StatefulWidget {
  const OrganizationPage({Key? key}) : super(key: key);

  @override
  State<OrganizationPage> createState() => _OrganizationPageState();
}

class _OrganizationPageState extends State<OrganizationPage> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {

    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: CustomColor.appBlue
        ),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 240,
            child: Image.asset(
              'assets/central_mosque.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: BoxDecoration(
              color: CustomColor.appBlue
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(text: 'Central Mosque', color: Colors.white, fontSize: 20,),
                        const SizedBox(height: 8,),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                            ),
                            const SizedBox(width: 8,),
                            SmallText(text: 'Abuja, Nigeria', color: Colors.white,),
                          ],
                        ),
                      ],
                    ),
                  ),
                  CustomButton(text:'Follow',size: Size(68, 42), primary: CustomColor.appPurple, onPrimary: Colors.white, onPressed: () {}),
                ],
              ),
            ),
          ),
          const SizedBox(height: 6,),
          Container(
            child: TabBar(
              controller: _tabController,
              labelColor: CustomColor.appBlue,
              unselectedLabelColor: Colors.grey,
              indicatorColor: CustomColor.appBlue,
              tabs: [
                Tab(text: 'Popular Lectures',),
                Tab(text: 'New Lectures',),
                Tab(text: 'Live Lectures',),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Popular(),
                New(),
                Live(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
