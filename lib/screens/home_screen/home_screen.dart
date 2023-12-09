import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled7/widgets/custom_bottom_bar.dart';
import 'package:untitled7/screens/home_screen/home_body.dart';
import 'package:untitled7/logic/cubit/select_screen_cubit.dart';
import 'package:untitled7/utils/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: buildAppBar(),
        body: BlocBuilder<SelectScreenCubit, int>(
          builder: (context, state) {
            return Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  state==0 ? HomeBody() : Container(
                    child: Center(child: Text("Ekleme"),),),
                  CustomBottomBar()
                ],
              ),
            );
          },
        )
    );
  }

  PreferredSize buildAppBar() {
    return PreferredSize(
      preferredSize: AppBar().preferredSize,
      child: Container(
        child: AppBar(
          backgroundColor: AppColors.customAppBarColor,
          automaticallyImplyLeading: false,
          title: buildText(),
          centerTitle: false,
          shape: buildShape(),
        ),
      ),
    );
  }

  Text buildText() {
    return Text(
      "Soğuk Bekçi",
      style: GoogleFonts.poppins(
          color: AppColors.customButtonTextColor,
          fontSize: 16,
          fontWeight: FontWeight.w400
      ),);
  }

  RoundedRectangleBorder buildShape() {
    return RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15))
    );
  }
}
