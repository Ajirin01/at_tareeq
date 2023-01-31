import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/config/small_text.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import '../config/color.dart';

class HostLayout extends StatelessWidget {
  const HostLayout({Key? key,
    required this.controller,
    this.header = '',
    required this.expanded,
    required this.listHeader,
    this.listColumn,
  }) : super(key: key);

  final ExpandableController controller;
  final String header;
  final Widget expanded;
  final String listHeader;
  final Widget? listColumn;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: CustomColor.appBlue,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 52, 16, 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  BigText(text: header, color: Colors.white,),
                  SizedBox(height: 32,),
                  ExpandablePanel(
                    controller: controller,
                    theme: ExpandableThemeData(
                      tapBodyToExpand: true,
                      tapBodyToCollapse: false,
                    ),
                    collapsed: GestureDetector(
                      onTap: (){controller.toggle();},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          BigText(text: ''),
                        ],
                      ),
                    ),
                    expanded: expanded,
                    builder: (_, collapsed, expanded) => Expandable(
                        collapsed: collapsed,
                        expanded: expanded
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BigText(text: listHeader, fontSize: 18,),
              FlatButton(onPressed: (){controller.toggle();}, child: SmallText(text: 'See full'))
            ],
          ),
        ),
        Divider(height: 4,),
        Expanded(child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: listColumn,
          ),
        ),),
      ],
    );
  }
}