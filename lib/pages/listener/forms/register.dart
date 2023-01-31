import 'dart:convert';

import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/config/color.dart';
import 'package:at_tareeq/config/baseUrl.dart';
import 'package:at_tareeq/config/small_text.dart';
import 'package:at_tareeq/pages/verification/verification_method.dart';
import 'package:at_tareeq/widget/button.dart';
import 'package:at_tareeq/widget/custom_page_route.dart';
import 'package:at_tareeq/widget/input.dart';
import 'package:at_tareeq/widget/text_button.dart';
import 'package:flutter/material.dart';
import '../../../widget/my_painter.dart';
import 'login.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

class RegisterListener extends StatefulWidget {
  const RegisterListener({Key? key}) : super(key: key);

  @override
  State<RegisterListener> createState() => _RegisterListenerState();
}

class _RegisterListenerState extends State<RegisterListener> {

  String keyValue = 'listener';

  late String fullName;
  late String email;
  late String phoneNumber;
  late String location;


  TextEditingController FullName = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController PhoneNumber = TextEditingController();
  TextEditingController Location = TextEditingController();
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
                  CustomInput(labelText: 'Full Name',
                      controller: FullName, hintText: 'Full Name',
                      icon: Icons.person_outline,
                      onSaved: (value){fullName = value!;},
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Name is required';
                        }
                        return null;
                      }
                  ),
                  SizedBox(height: 16,),
                  CustomInput(labelText: 'Email',
                      controller: Email, hintText: 'Email',
                      icon: Icons.email_outlined,
                      onSaved: (value){email = value!;},
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
                  CustomInput(labelText: 'Phone Number',
                    controller: PhoneNumber, hintText: 'Phone Number',
                    icon: Icons.phone_outlined,
                    onSaved: (value) {phoneNumber = value!;},
                    validator: (value) {
                      if(value!.isEmpty){
                        return 'Phone Number is required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16,),
                  CustomInput(labelText: 'Location',
                      controller: Location,
                      hintText: 'Location',
                      icon: Icons.location_on_outlined,
                      onSaved: (value){location = value!;},
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Location is required';
                        }
                        return null;
                      }
                  ),
                  SizedBox(height: 16,),
                  CustomInput(labelText: 'Password',
                    hintText: 'Password', icon: Icons.lock_outline,
                    onSaved: (value) {},
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
                  CustomInput(labelText: 'Confirm Password',
                    hintText: 'Confirm Password',
                    icon: Icons.lock_outline, onSaved:(value) {},
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
                      listenerRegistration( fullName,
                        email, phoneNumber, location, password,
                          confirmPassword, context );
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
                    Navigator.of(context).push(CustomPageRoute(child: Login(keyValue: keyValue,)));
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

  void listenerRegistration(
      String name, email, phone, location, password, ConfirmPassword, BuildContext context) async {
    try {
      var JsonData = null;
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return TweenAnimationBuilder(
                tween: Tween(begin: 0.0, end: 1.0),
                duration: Duration(seconds: 4),
                builder: (context, value, _) => SizedBox(
                    width: 100,
                    height: 100,
                    child: Center(
                        child: CircularProgressIndicator(
                          value: 12,
                          backgroundColor: Colors.deepOrange,
                          strokeWidth: 8,
                        )
                    )
                )
            );
          });

      Map data = {
        'role': ["listener"],
        'name': name,
        'email': email,
        'phone': phone,
        'password': password,
        'passwordConfirm': ConfirmPassword
      };

      print(data.toString());

      final response = await http.post(
        Uri.parse(BaseUrl.Listener),
        body: data,
      );

      if (response.statusCode == 200) {
        JsonData = json.decode(response.body);


        //push next page
        Navigator.of(context).push(CustomPageRoute(child:
        VerificationMethod(keyValue : keyValue))
        );

      }
      //StatusCode UnSuccessful
      else if (response.statusCode == 401) {
        Fluttertoast.showToast(
          msg: "incorrect Login Details",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 20,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 12.0,
        );


      }
    } catch (e) {
         Fluttertoast.showToast(
        msg: "No Internet Access",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 20,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 12.0,
      );
    }
  }


}