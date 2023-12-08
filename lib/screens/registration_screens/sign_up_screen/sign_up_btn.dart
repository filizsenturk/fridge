import 'package:flutter/material.dart';
import 'package:untitled7/screens/home_screen/home_screen.dart';
import 'package:untitled7/widgets/custom_button.dart';

class SignUpBtn extends StatefulWidget {
  const SignUpBtn({super.key});

  @override
  State<SignUpBtn> createState() => _SignUpBtnState();
}

class _SignUpBtnState extends State<SignUpBtn> {
  onSignUpClicked(){
    print("Kaydol butonu tıklandı");
    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return CustomButton(title: "Kaydol", onTap: onSignUpClicked);
  }
}
