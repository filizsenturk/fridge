import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled7/logic/cubit/registration_cubit.dart';
import 'package:untitled7/screens/registration_screens/sign_in_screen/sign_in_screen.dart';
import 'package:untitled7/screens/registration_screens/sign_up_screen/sign_up_screen.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<RegistrationCubit,int>(builder: (context,state){
        return state==0 ? SignUpScreen() : SignInScreen();
      })
    );
  }
}
