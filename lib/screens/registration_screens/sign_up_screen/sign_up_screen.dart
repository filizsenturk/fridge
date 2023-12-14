import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled7/screens/registration_screens/sign_in_sign_up_text.dart';
import 'package:untitled7/screens/registration_screens/sign_up_screen/sign_up_btn.dart';
import 'package:untitled7/screens/registration_screens/sign_up_screen/sign_up_fields.dart';
import 'package:untitled7/utils/app_colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Container(
        width: 100.w,
        child: Column(
          children: [
            buildImage(),
            SignUpFields(),
            SignUpBtn(),
            SignInSignUpText(),
          ],
        ),
      ),
    );
  }

  Padding buildImage() {
    return Padding(
      padding:  EdgeInsets.only(top:8.h),
      child: Image.asset("assets/fridge2.png",width: 52.w,),
    );
  }
}
