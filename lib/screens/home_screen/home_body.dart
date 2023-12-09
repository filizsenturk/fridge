import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled7/logic/cubit/bottom_bar_index_cubit.dart';
import 'package:untitled7/logic/cubit/select_screen_cubit.dart';
import 'package:untitled7/utils/app_colors.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
         buildProductList(),
          buildAddProductIcon()
        ],
      ),
    );
  }

  Container buildProductList() {
    return  Container(
      height: 63.h,
      width: 100.w,
      margin: EdgeInsets.only(top: 3.h,left: 3.w,right: 3.w),
      decoration: BoxDecoration(
          color: AppColors.darkRed,
          borderRadius: BorderRadius.circular(15)
      ),
      child: Center(child: Text("Ürün listesi")),
    );
  }

  GestureDetector buildAddProductIcon() {
    return GestureDetector(
      onTap: (){
        context.read<SelectScreenCubit>().setScreen(1);
      },
      child: Container(
        margin: EdgeInsets.only(top: 2.5.h),
        child: Image.asset("assets/plus.png",),
      ),
    );
  }
}
