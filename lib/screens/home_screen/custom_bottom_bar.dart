import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled7/utils/app_colors.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 10.h,
      decoration: BoxDecoration(
          color:AppColors.customBtnColor,
      ),
      child: Row(

      ),

    );
  }
}
