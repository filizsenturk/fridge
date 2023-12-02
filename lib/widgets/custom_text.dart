import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;
  CustomText({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: size.height/40),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600
        ),
      ),
    );
  }
}
