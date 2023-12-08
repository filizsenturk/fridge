import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled7/utils/app_colors.dart';

class CustomButton extends StatefulWidget {
  String title;
  VoidCallback onTap;
  CustomButton({super.key,required this.title,required this.onTap});
  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child:Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 10.w,right: 10.w),
        width: 100.w,
        height: 6.h,
        decoration: BoxDecoration(
          color: AppColors.customBtnColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          widget.title,
          style: GoogleFonts.poppins(
              color: AppColors.customButtonTextColor,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
      ) ,
    );
  }
}
