import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/config/color.dart';
import 'package:at_tareeq/config/small_text.dart';
import 'package:at_tareeq/widget/button.dart';
import 'package:flutter/material.dart';

import '../widget/input.dart';

class DetailsForm extends StatefulWidget {
  const DetailsForm({Key? key,
    required this.keyValue,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  final String keyValue;
  final String buttonText;
  final VoidCallback onPressed;

  @override
  State<DetailsForm> createState() => _DetailsFormState();
}

class _DetailsFormState extends State<DetailsForm> {

  late String title;
  late String section;
  late String tags;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BigText(text: 'Details'),
              SizedBox(height: 6,),
              SmallText(text: 'Fill in the details about this upload', color: CustomColor.appBlue,),
              SizedBox(height: 24,),
              Form(key: formKey,child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomInput(labelText: 'Title', hintText: 'Enter the lecture title', icon: Icons.person_outline, onSaved: (value) {title = value!;},
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Title is required';
                        }
                        return null;
                      }
                  ),
                  SizedBox(height: 16,),
                  CustomInput(labelText: 'Section', hintText: 'What pillars of Islam does it fall into?', icon: Icons.menu_book, onSaved: (value) {section = value!;},
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Section is required';
                        }
                        return null;
                      }
                  ),
                  SizedBox(height: 16,),
                  CustomInput(labelText: 'Tags', hintText: 'Add tags relating to the lecture', icon: Icons.label_outline_rounded, onSaved: (value) {tags = value!;},
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Tag is required';
                        }
                        return null;
                      }
                  ),
                  SizedBox(height: 84,),
                  CustomButton(text: '${widget.buttonText}', onPressed: widget.onPressed),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
