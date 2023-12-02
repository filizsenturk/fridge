import 'package:flutter/material.dart';
import 'package:untitled7/screens/registration_screens/sign_in_screen/sign_in_btn.dart';
import 'package:untitled7/screens/registration_screens/sign_in_screen/sign_in_field.dart';
import 'package:untitled7/screens/registration_screens/sign_in_screen/starter_text.dart';

class SignInScreen extends StatefulWidget {
   SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  Color backgroundColor =  Color.fromRGBO(254, 205, 72, 100);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;
    return  Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        child: Column(
          children: [
            StarterText(),
            SignInField(),
            SignInBtn(),
          //  SignInSignUpSelection()
          ],
        )
      ),
    );
  }
}
