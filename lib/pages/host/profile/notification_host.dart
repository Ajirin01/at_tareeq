import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/config/color.dart';
import 'package:at_tareeq/widget/notification_item.dart';
import 'package:flutter/material.dart';

class NotificationHost extends StatefulWidget {
  const NotificationHost({Key? key}) : super(key: key);

  @override
  State<NotificationHost> createState() => _NotificationHostState();
}

class _NotificationHostState extends State<NotificationHost> {
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
            NotificationItem(text: 'Upload complete notifications'),
            Divider(height: 6,),
          ],
        ),
      ),
    );
  }
}
