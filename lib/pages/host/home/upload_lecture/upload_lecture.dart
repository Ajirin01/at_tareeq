import 'dart:io';
import 'package:at_tareeq/layouts/upload_lecture_layout.dart';
import 'package:at_tareeq/pages/host/home/upload_lecture/add_detail.dart';
import 'package:at_tareeq/widget/custom_page_route.dart';
import 'package:file_picker/file_picker.dart';

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class UploadFile extends StatefulWidget {
  const UploadFile({Key? key}) : super(key: key);

  @override
  State<UploadFile> createState() => _UploadFileState();
}

class _UploadFileState extends State<UploadFile> {

  late File newFile;

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
      text: 'Click on brows files to upload your lectures',
      buttonText: 'Browse files',
      controller: controller,
      onPressed: () async{
        final file = await pickVideoFile();
        if(file == null) return;
        newFile = file;
        print(newFile);
        Navigator.of(context).push(CustomPageRoute(child: AddDetail()));
        setState((){});
      }
    );
  }

  Future<File?> pickVideoFile() async{
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return null;
    return File(result.files.single.path!);
  }
}