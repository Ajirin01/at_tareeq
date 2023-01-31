import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/config/color.dart';
import 'package:at_tareeq/widget/notification_item.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: CustomColor.appBlue
        ),
        title: BigText(text: 'Notifications'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            NotificationItem(text: 'Host near me notifications'),
            Divider(height: 6,),
            NotificationItem(text: 'Host New Lectures notifications'),
            Divider(height: 6,),
            NotificationItem(text: 'Download Complete Notifications'),
            Divider(height: 6,),
          ],
        ),
      ),
    );
  }
}
