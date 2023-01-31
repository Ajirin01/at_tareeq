import 'package:at_tareeq/config/small_text.dart';
import 'package:flutter/material.dart';

import '../config/color.dart';

class NotificationItem extends StatelessWidget {
  NotificationItem({Key? key,
    required this.text,
    this.fontSize = 16,
  }) : super(key: key);

  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SmallText(text: text, fontSize: fontSize,),
          SwitchScreen(),
        ],
      ),
    );
  }
}

class SwitchScreen extends StatefulWidget{
  @override
  SwitchClass createState() => new SwitchClass();
}

class SwitchClass extends State{
  bool isSwitched = false;

  void toggleSwitch(bool value){
    if(isSwitched == false){
      setState((){
        isSwitched = true;
      });
    }else {
      setState((){
        isSwitched = false;
      });
    }
  }

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Transform.scale(
          scale: 1,
          child: Switch(

            onChanged: toggleSwitch,
            value: isSwitched,
            activeColor: CustomColor.appBlue,
            activeTrackColor: CustomColor.appPurple,
            inactiveThumbColor: Colors.grey[700],
            inactiveTrackColor: Colors.grey,
          ),
        ),
      ],
    );
  }
}