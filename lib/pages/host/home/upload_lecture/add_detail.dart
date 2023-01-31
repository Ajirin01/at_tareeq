import 'package:at_tareeq/layouts/upload_lecture_layout.dart';
import 'package:at_tareeq/pages/details_form.dart';
import 'package:at_tareeq/widget/custom_page_route.dart';

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class AddDetail extends StatefulWidget {
  const AddDetail({Key? key}) : super(key: key);

  @override
  State<AddDetail> createState() => _AddDetailState();
}

class _AddDetailState extends State<AddDetail> {

  final String uploadLectureKey = 'upload lecture';

  static bool isOpened = true;
  ExpandableController controller = ExpandableController(
    initialExpanded: isOpened,
  );

  @override
  void initState(){
    super.initState();

    controller.addListener(() {
      isOpened = !isOpened;
    });
  }

  @override
  void dispose(){
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return UploadLectureLayout(
        text: 'File Added',
        buttonText: 'Add Details',
        controller: controller,
        onPressed: () {
          Navigator.of(context).push(CustomPageRoute(child: DetailsForm(keyValue: uploadLectureKey, buttonText: 'Upload', onPressed: () {
            //
          },)));
        }
    );
  }
}