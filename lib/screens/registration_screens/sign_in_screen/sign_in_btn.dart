import 'package:flutter/material.dart';
import 'package:untitled7/screens/home_screen/home_screen.dart';
import 'package:untitled7/widgets/custom_button.dart';
import 'package:untitled7/widgets/custom_text.dart';

class SignInBtn extends StatefulWidget {
  const SignInBtn({super.key});

  @override
  State<SignInBtn> createState() => _SignInBtnState();
}

class _SignInBtnState extends State<SignInBtn> {
  onSignInClicked(){
    print("Sign In butonuna basıldı");
    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return CustomButton(title: 'Giriş yap',onTap: onSignInClicked,);
  }
}
