import 'package:flutter/material.dart';

import '../../../config/big_text.dart';
import '../../../config/color.dart';
import '../../../widget/button.dart';
import '../../../widget/input.dart';

class EditProfileHost extends StatefulWidget {
  const EditProfileHost({Key? key}) : super(key: key);

  @override
  State<EditProfileHost> createState() => _EditProfileHostState();
}

class _EditProfileHostState extends State<EditProfileHost> {

  late String fullName;
  late String email;
  late String phoneNumber;
  late String organization;
  late String location;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: CustomColor.appBlue
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: BigText(text: 'Edit Profile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Form(key: formKey,child: Column(
                  children: [
                    CustomInput(labelText: 'Full Name', hintText: 'Full Name', icon: Icons.person_outline, onSaved: (value){fullName = value!;},
                        validator: (value){}
                    ),
                    SizedBox(height: 16,),
                    CustomInput(labelText: 'Email', hintText: 'Email', icon: Icons.email_outlined, onSaved: (value){email = value!;},
                        validator: (value){
                          if(value!.isNotEmpty){
                            if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)){
                              return 'Enter a valid email address';
                            }
                          }
                          return null;
                        }
                    ),
                    SizedBox(height: 16,),
                    CustomInput(labelText: 'Phone Number', hintText: 'Phone Number', icon: Icons.phone_outlined, onSaved: (value) {phoneNumber = value!;},
                      validator: (value) {},
                    ),
                    SizedBox(height: 16,),
                    CustomInput(labelText: 'Mosque/Organization/Lecturer', hintText: 'Mosque/Organization/Lecturer', icon: Icons.people_outline_rounded, onSaved: (value){organization = value!;},
                        validator: (value){}
                    ),
                    SizedBox(height: 16,),
                    CustomInput(labelText: 'Location', hintText: 'Location', icon: Icons.location_on_outlined, onSaved: (value){location = value!;},
                        validator: (value){}
                    ),
                    SizedBox(height: 24,),
                    CustomButton(text: 'Save', onPressed: () {
                      if(!formKey.currentState!.validate()){
                        return;
                      }else{
                        //Save
                      }
                      formKey.currentState!.save();
                    }),
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}