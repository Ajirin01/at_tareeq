import 'package:at_tareeq/layouts/list_menu_expandable.dart';
import 'package:at_tareeq/widget/list_item.dart';
import 'package:flutter/material.dart';

class New extends StatefulWidget {
  const New({Key? key}) : super(key: key);

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    return ListMenuExpandable(widget: Container());
  }
}
