import 'package:flutter/material.dart';
import 'package:untitled7/widgets/custom_button.dart';
import 'package:untitled7/widgets/custom_text.dart';

class SignInBtn extends StatefulWidget {
  const SignInBtn({super.key});

  @override
  State<SignInBtn> createState() => _SignInBtnState();
}

class _SignInBtnState extends State<SignInBtn> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return CustomButton(title: 'Giriş yap',);
  }
}
