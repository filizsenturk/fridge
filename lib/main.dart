import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled7/bloc/cubit/registration_cubit.dart';
import 'package:untitled7/screens/registration_screens/registration.dart';
import 'package:untitled7/screens/registration_screens/sign_in_screen/sign_in_screen.dart';
import 'package:untitled7/screens/registration_screens/sign_up_screen/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
 const   MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RegistrationCubit>(
            create: (BuildContext context) => RegistrationCubit()),
      ],
      child: Sizer(
          builder: (context, orientation, screenType) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Soğuk Bekçi',
            home:Registration()
          );
        }
      ),
    );
  }
}
