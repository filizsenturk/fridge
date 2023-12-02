import 'package:flutter/material.dart';

class StarterText extends StatelessWidget {
  const StarterText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/fridge.png",),
        Text("Soğuk Bekçi Uygulamasına hoşgeldiniz")
      ],
    );
  }
}
