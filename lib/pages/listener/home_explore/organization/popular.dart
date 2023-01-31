import 'package:at_tareeq/widget/list_item.dart';
import 'package:flutter/material.dart';

import '../../../../layouts/list_menu_expandable.dart';

class Popular extends StatefulWidget {
  const Popular({Key? key}) : super(key: key);

  @override
  State<Popular> createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return ListMenuExpandable(widget: Container());
  }
}
