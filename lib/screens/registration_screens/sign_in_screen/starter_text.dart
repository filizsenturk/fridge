import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class StarterText extends StatelessWidget {
  const StarterText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/fridge.png",height: 35.h,),
        Text("Soğuk Bekçi Uygulamasına hoşgeldiniz")
      ],
    );
  }
}
