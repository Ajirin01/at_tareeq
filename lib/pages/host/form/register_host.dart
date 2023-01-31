import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/config/color.dart';
import 'package:at_tareeq/config/small_text.dart';
import 'package:at_tareeq/pages/host/form/login_host.dart';
import 'package:at_tareeq/pages/verification/verification_method.dart';
import 'package:at_tareeq/widget/button.dart';
import 'package:at_tareeq/widget/custom_page_route.dart';
import 'package:at_tareeq/widget/input.dart';
import 'package:at_tareeq/widget/text_button.dart';
import 'package:flutter/material.dart';
import '../../../widget/my_painter.dart';

class RegisterHost extends StatefulWidget {
  const RegisterHost({Key? key}) : super(key: key);

  @override
  State<RegisterHost> createState() => _RegisterHostState();
}

class _RegisterHostState extends State<RegisterHost> {

  String keyValue = 'host';

  late String fullName;
  late String email;
  late String phoneNumber;
  late String organization;
  late String location;

  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

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
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BigText(text: 'Create Account'),
              SizedBox(height: 8,),
              SmallText(text: 'Create a new account', color: CustomColor.appBlue,),
              SizedBox(height: 24,),
              Form(key: formKey,child: Column(
                children: [
                  CustomInput(labelText: 'Full Name', hintText: 'Full Name', icon: Icons.person_outline, onSaved: (value){fullName = value!;},
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Name is required';
                        }
                        return null;
                      }
                  ),
                  SizedBox(height: 16,),
                  CustomInput(labelText: 'Email', hintText: 'Email', icon: Icons.email_outlined, onSaved: (value){email = value!;},
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Email is required';
                        }
                        if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)){
                          return 'Enter a valid email address';
                        }
                        return null;
                      }
                  ),
                  SizedBox(height: 16,),
                  CustomInput(labelText: 'Mosque/Organization/Lecturer', hintText: 'Mosque/Organization/Lecturer', icon: Icons.people_outline_rounded, onSaved: (value){organization = value!;},
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Mosque/Organization/Lecturer is required';
                        }
                        return null;
                      }
                  ),
                  SizedBox(height: 16,),
                  CustomInput(labelText: 'Phone Number', hintText: 'Phone Number', icon: Icons.phone_outlined, onSaved: (value) {phoneNumber = value!;},
                    validator: (value) {
                      if(value!.isEmpty){
                        return 'Phone Number is required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16,),
                  CustomInput(labelText: 'Location', hintText: 'Location', icon: Icons.location_on_outlined, onSaved: (value){location = value!;},
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Location is required';
                        }
                        return null;
                      }
                  ),
                  SizedBox(height: 16,),
                  CustomInput(labelText: 'Password', hintText: 'Password', icon: Icons.lock_outline, onSaved: (value) {},
                    obscureText: true,
                    controller: password,
                    validator: (value) {
                      if(value!.isEmpty){
                        return 'Password is required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16,),
                  CustomInput(labelText: 'Confirm Password', hintText: 'Confirm Password', icon: Icons.lock_outline, onSaved:(value) {},
                    obscureText: true,
                    controller: confirmPassword,
                    validator: (value) {
                      if(value!.isEmpty){
                        return 'Confirm Password is required';
                      }
                      if(password.text != confirmPassword.text){
                        return 'Password must be a match';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 24,),
                  CustomButton(text: 'Create Account', onPressed: () {
                    if(!formKey.currentState!.validate()){
                      return;
                    }else{
                      Navigator.of(context).push(CustomPageRoute(child: VerificationMethod(keyValue : keyValue)));
                    }
                    formKey.currentState!.save();
                  }),
                ],
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmallText(text: 'Have an account?', color: CustomColor.appBlue, fontSize: 14,),
                  CustomTextButton(text: 'Log in',color: Colors.red, fontSize: 14, onPressed: () {
                    Navigator.of(context).push(CustomPageRoute(child: LoginHost()));
                  }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomPaint(
                    size: Size(0, 0),
                    painter: MyPainter(),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 12,
                    child: SmallText(text: 'Or', fontSize: 14,),
                  ),
                  CustomPaint(
                    size: Size(0, 0),
                    painter: MyPainter2(),
                  ),
                ],
              ),
              SizedBox(height: 8,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SmallText(text: 'Sign up with', color: CustomColor.appBlue,),
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 24,
                      ),
                      SizedBox(width: 16,),
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 24,
                      ),
                      SizedBox(width: 16,),
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 24,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}