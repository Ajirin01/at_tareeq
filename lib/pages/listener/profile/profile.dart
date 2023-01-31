import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/config/small_text.dart';
import 'package:at_tareeq/pages/about.dart';
import 'package:at_tareeq/pages/listener/profile/edit_profile.dart';
import 'package:at_tareeq/pages/listener/profile/notification.dart';
import 'package:at_tareeq/pages/listener/profile/privacy.dart';
import 'package:at_tareeq/pages/on_boarding_two.dart';
import 'package:at_tareeq/widget/button.dart';
import 'package:at_tareeq/widget/custom_page_route.dart';
import 'package:at_tareeq/widget/profile_item.dart';
import 'package:at_tareeq/widget/text_button.dart';
import 'package:flutter/material.dart';

import '../../host/form/register_host.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BigText(text: 'Profile'),
              SizedBox(height: 48,),
              Row(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.add_photo_alternate_rounded, color: Colors.grey[200], size: 48,),
                  ),
                  SizedBox(width: 16,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SmallText(text: 'User Name', fontSize: 20,),
                      SizedBox(height: 4,),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(CustomPageRoute(child: EditProfile()));
                        },
                          child: SmallText(text: 'Edit Profile', color: Colors.grey[700],)
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 48,),
              ProfileItem(icon: Icons.notifications_none_rounded, text: 'Notification', onTap: (){
                Navigator.of(context).push(CustomPageRoute(child: Notifications()));
              }),
              Divider(height: 6,),
              ProfileItem(icon: Icons.privacy_tip_rounded, text: 'Privacy & Location', onTap: (){
                Navigator.of(context).push(CustomPageRoute(child: Privacy()));
              }),
              Divider(height: 6,),
              ProfileItem(icon: Icons.info_outline_rounded, text: 'About', onTap: (){
                Navigator.of(context).push(CustomPageRoute(child: About()));
              }),
              Divider(height: 6,),
              ProfileItem(icon: Icons.logout_rounded, text: 'Log Out', onTap: (){
                Navigator.of(context).pushReplacement(CustomPageRoute(child: OnBoardingTwo()));
              }),
              Divider(height: 6,),
              SizedBox(height: 48,),
              CustomButton(text: 'Become a host', onPressed: (){
                Navigator.of(context).push(CustomPageRoute(child: RegisterHost()));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
