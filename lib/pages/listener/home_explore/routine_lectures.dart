import 'package:at_tareeq/widget/list_item.dart';
import 'package:flutter/material.dart';

import '../../../layouts/list_menu_expandable.dart';

class RoutineLectures extends StatefulWidget {
  const RoutineLectures({Key? key}) : super(key: key);

  @override
  State<RoutineLectures> createState() => _RoutineLecturesState();
}

class _RoutineLecturesState extends State<RoutineLectures> {
  @override
  Widget build(BuildContext context) {
    return ListMenuExpandable(widget: Container());
  }
}
