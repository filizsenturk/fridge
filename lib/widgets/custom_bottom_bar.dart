import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled7/logic/cubit/select_screen_cubit.dart';
import 'package:untitled7/utils/app_colors.dart';
import 'package:untitled7/widgets/bar_button.dart';
import 'package:untitled7/logic/cubit/bottom_bar_index_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});
  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  List buttonNames = ["Meyve", "Sebze", "Diğer", "Tümü"];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectScreenCubit, int>(
      builder: (context, state) {
        return Container(
            width: 100.w,
            height: 10.h,
            decoration: BoxDecoration(
              color: AppColors.customBtnColor,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            ),
            child: state == 0
                ? ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: buttonNames.length,
                    itemBuilder: (context, index) {
                      return BarButton(
                          title: buttonNames[index],
                          onTap: () {
                            context
                                .read<BottomBarIndexCubit>()
                                .changeState(index);
                          });
                    })
                : Padding(
                    padding: EdgeInsets.only(right: 3.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BarButton(title: "Ekle", onTap: () {}),
                        BarButton(
                            title: "İptal",
                            onTap: () {
                              context.read<SelectScreenCubit>().setScreen(0);
                            }),
                      ],
                    ),
                  ));
      },
    );
  }
}
