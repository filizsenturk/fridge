import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled7/utils/app_colors.dart';

class BarButton extends StatefulWidget {
  String title;
  VoidCallback onTap;
  BarButton({super.key,required this.title,required this.onTap});

  @override
  State<BarButton> createState() => _BarButtonState();
}

class _BarButtonState extends State<BarButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: EdgeInsets.only(left: 4.w,top: 2.h,bottom: 2.h),
        width: 20.w,
        height: 5.h,
        decoration: BoxDecoration(
          color: AppColors.bottomBarButtonBackgroundColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            widget.title,
            style: GoogleFonts.poppins(
              color: AppColors.backgroundColor,
              fontSize: 16
            ),
           // textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
