import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/pages/interest.dart';
import 'package:at_tareeq/widget/button.dart';
import 'package:at_tareeq/widget/custom_page_route.dart';
import 'package:flutter/material.dart';

import '../../layouts/host_bottom_nav.dart';

class Successful extends StatefulWidget {
  const Successful({Key? key, required this.keyValue}) : super(key: key);

  final String keyValue;

  @override
  State<Successful> createState() => _SuccessfulState();
}

class _SuccessfulState extends State<Successful> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.mark_email_read_rounded, size: 84,),
            SizedBox(height: 64,),
            BigText(text: 'Verification'),
            SizedBox(height: 8,),
            BigText(text: 'Successful'),
            SizedBox(height: 84,),
            CustomButton(text: 'Login', onPressed: () {
              if(widget.keyValue == 'listener'){
                Navigator.of(context).push(CustomPageRoute(child: Interest(keyValue: widget.keyValue,)));
              }else if(widget.keyValue == 'host'){
                Navigator.of(context).push(CustomPageRoute(child: HostBottomNav()));
              }
            }),
          ],
        ),
      ),
    );
  }
}
