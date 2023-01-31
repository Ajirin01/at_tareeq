import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/config/color.dart';
import 'package:at_tareeq/config/small_text.dart';
import 'package:at_tareeq/layouts/listener_bottom_nav.dart';
import 'package:at_tareeq/widget/button.dart';
import 'package:at_tareeq/widget/custom_page_route.dart';
import 'package:at_tareeq/widget/input.dart';
import 'package:at_tareeq/widget/text_button.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key, required this.keyValue}) : super(key: key);

  final String keyValue;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  late String email;
  late String phoneNumber;

  TextEditingController password = TextEditingController();

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
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BigText(text: 'Welcome User,'),
              SizedBox(height: 8,),
              SmallText(text: 'Login to continue'),
              SizedBox(height: 24,),
              Form(key: formKey,child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomInput(labelText: 'Email/Phone Number', hintText: 'Enter your Email/Phone Number', icon: Icons.person_outline, onSaved: (value) {},
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Email/Phone Number is required';
                        }
                        return null;
                      }
                  ),
                  SizedBox(height: 16,),
                  CustomInput(labelText: 'Password', hintText: 'Enter your Password', icon: Icons.lock_outline, onSaved: (value){},
                    obscureText: true,
                    controller: password,
                    validator: (value) {
                      if(value!.isEmpty){
                        return 'Password is required';
                      }
                      return null;
                    },
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomTextButton(text: 'Forgot password?',fontSize: 14,color: Colors.grey, onPressed: () {}),
                    ],
                  ),
                  SizedBox(height: 120,),
                  CustomButton(text: 'Login', onPressed: () {
                    if(!formKey.currentState!.validate()){
                      return;
                    }else{
                      Navigator.of(context).push(CustomPageRoute(child: ListenerBottomNav(keyValue: widget.keyValue,)));
                    }
                    formKey.currentState!.save();
                  }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SmallText(text: "Don't have an account?", color: CustomColor.appBlue, fontSize: 14,),
                      CustomTextButton(text: 'Create Account', color: Colors.red, fontSize: 14, onPressed: () {
                        Navigator.of(context).pop();
                      }),
                    ],
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
