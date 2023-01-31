import 'package:at_tareeq/widget/list_item.dart';
import 'package:flutter/material.dart';

import '../../../layouts/list_menu_expandable.dart';

class SpecialLectures extends StatefulWidget {
  const SpecialLectures({Key? key}) : super(key: key);

  @override
  State<SpecialLectures> createState() => _SpecialLecturesState();
}

class _SpecialLecturesState extends State<SpecialLectures> {
  @override
  Widget build(BuildContext context) {
    return ListMenuExpandable(widget: Container());
  }
}
