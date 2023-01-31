import 'package:at_tareeq/pages/host/profile/edit_profile_host.dart';
import 'package:at_tareeq/pages/host/profile/notification_host.dart';
import 'package:at_tareeq/pages/host/profile/privacy_host.dart';
import 'package:at_tareeq/pages/listener/forms/register.dart';
import 'package:flutter/material.dart';

import '../../../config/big_text.dart';
import '../../../config/small_text.dart';
import '../../../widget/button.dart';
import '../../../widget/custom_page_route.dart';
import '../../../widget/profile_item.dart';
import '../../about.dart';
import '../../on_boarding_two.dart';

class ProfileHost extends StatefulWidget {
  const ProfileHost({Key? key}) : super(key: key);

  @override
  State<ProfileHost> createState() => _ProfileHostState();
}

class _ProfileHostState extends State<ProfileHost> {
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
                            Navigator.of(context).push(CustomPageRoute(child: EditProfileHost()));
                          },
                          child: SmallText(text: 'Edit Profile', color: Colors.grey[700],)
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 48,),
              ProfileItem(icon: Icons.notifications_none_rounded, text: 'Notification', onTap: (){
                Navigator.of(context).push(CustomPageRoute(child: NotificationHost()));
              }),
              Divider(height: 6,),
              ProfileItem(icon: Icons.privacy_tip_rounded, text: 'Privacy & Location', onTap: (){
                Navigator.of(context).push(CustomPageRoute(child: PrivacyHost()));
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
              CustomButton(text: 'Become a listiner', onPressed: (){
                Navigator.of(context).push(CustomPageRoute(child: RegisterListener()));
              }),
            ],
          ),
        ),
      ),
    );
  }
}