import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/config/color.dart';
import 'package:at_tareeq/widget/notification_item.dart';
import 'package:flutter/material.dart';

class PrivacyHost extends StatefulWidget {
  const PrivacyHost({Key? key}) : super(key: key);

  @override
  State<PrivacyHost> createState() => _PrivacyHostState();
}

class _PrivacyHostState extends State<PrivacyHost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
            color: CustomColor.appBlue
        ),
        title: BigText(text: 'Privacy and Location'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            NotificationItem(text: 'Pause location-based recommendations', fontSize: 14,),
            Divider(height: 6,),
            NotificationItem(text: 'Allow GPS usage'),
            Divider(height: 6,),
          ],
        ),
      ),
    );
  }
}
