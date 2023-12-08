import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled7/utils/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Container(
        width: 100.w,
        height: 100.w,
        child: Center(
          child: Text("Home Screen"),
        ),
      ),
    );
  }
}
