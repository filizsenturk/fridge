import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled7/utils/app_colors.dart';
import 'package:untitled7/utils/strings.dart';

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
      padding: EdgeInsets.only(top: 2.h,bottom: 2.h,left: 2.w,right: 2.w),
      decoration: BoxDecoration(
          color:AppColors.customBtnColor,
      ),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Strings.mainButtonList.length,
          itemBuilder: (context,index){
          return  Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 3.w,left: 3.w),
            width: 18.w,
            // 18x4 = 72 72+10 = 82   100-82=18  2 3 Meyve 3 3sebze3 3Diğer 3 3tümü 3 2
            decoration: BoxDecoration(
              color: AppColors.customBottomButtonColor,
              borderRadius: BorderRadius.circular(100)
            ),
            child: Text(Strings.mainButtonList[index],
            style: TextStyle(color: Colors.white),
            ),
          );
          }),

    );
  }
}
