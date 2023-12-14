import 'package:flutter/material.dart';
import 'package:untitled7/screens/registration_screens/sign_in_screen/sign_in_btn.dart';
import 'package:untitled7/screens/registration_screens/sign_in_screen/sign_in_field.dart';
import 'package:untitled7/screens/registration_screens/sign_in_screen/starter_text.dart';
import 'package:untitled7/screens/registration_screens/sign_in_sign_up_text.dart';
import 'package:untitled7/utils/app_colors.dart';

class SignInScreen extends StatefulWidget {
   SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Container(
        child: Column(
          children: [
            StarterText(),
            SignInField(),
            SignInBtn(),
            SignInSignUpText()
          ],
        )
      ),
    );
  }
}
