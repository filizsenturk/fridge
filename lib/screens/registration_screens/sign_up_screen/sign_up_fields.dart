import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled7/widgets/custom_text.dart';
import 'package:untitled7/widgets/custom_text_form_field.dart';

class SignUpFields extends StatefulWidget {
  const SignUpFields({super.key});

  @override
  State<SignUpFields> createState() => _SignUpFieldsState();
}

class _SignUpFieldsState extends State<SignUpFields> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordAgainControlller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 40.h,
      margin: EdgeInsets.only(left: 10.w,right: 10.w),
      child: Column(
       // mainAxisAlignment: ,
        crossAxisAlignment:CrossAxisAlignment.start ,
        children: [
          CustomText(text: "e-posta"),
          CustomTextFormField(controller: emailController),
          CustomText(text: "Şifre"),
          CustomTextFormField(controller: passwordController),
          CustomText(text: "Şifre Tekrar"),
          CustomTextFormField(controller: passwordAgainControlller)
        ],
      ),

    );
  }
}
