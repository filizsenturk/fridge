import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled7/utils/app_colors.dart';

class CustomText extends StatelessWidget {
  String text;
  CustomText({super.key,required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 1.5.h,top: 1.5.h),
      child: Text(
        text,
        style: TextStyle(
          color: AppColors.customTextColor,
          fontSize: 18,
          fontWeight: FontWeight.w600
        ),
      ),
    );
  }
}
