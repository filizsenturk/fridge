import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled7/bloc/cubit/registration_cubit.dart';
import 'package:untitled7/screens/registration_screens/sign_in_screen/sign_in_screen.dart';
import 'package:untitled7/screens/registration_screens/sign_up_screen/sign_up_screen.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationCubit,bool>(builder: (context,state){
      return state==true ? SignUpScreen() : SignInScreen();
    });
  }
}
