import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled7/widgets/custom_text.dart';
import 'package:untitled7/widgets/custom_text_form_field.dart';

class SignInField extends StatefulWidget {
  const SignInField({super.key});

  @override
  State<SignInField> createState() => _SignInFieldState();
}

class _SignInFieldState extends State<SignInField> {
  TextEditingController epostaController = TextEditingController();
  TextEditingController sifreController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.only(left: 10.w,right: 10.w),
      margin: EdgeInsets.only(top: 50),
      width: 100.w,
      height: 33.h,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(text: "e-posta",),
          CustomTextFormField(controller: epostaController,),
          SizedBox(height: 2.h,),
          CustomText(text:"şifre"),
          CustomTextFormField(controller:sifreController ,)
        ],
      )

    );
  }
}
