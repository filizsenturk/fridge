import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled7/bloc/cubit/registration_cubit.dart';

class SignInSignUpText extends StatefulWidget {
  const SignInSignUpText({super.key});

  @override
  State<SignInSignUpText> createState() => _SignInSignUpTextState();
}

class _SignInSignUpTextState extends State<SignInSignUpText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: BlocBuilder<RegistrationCubit,bool>(
          builder: (context,state){
            return GestureDetector(
              onTap: (){
                context.read<RegistrationCubit>().getRegistrationCubit() ?
                context.read<RegistrationCubit>().setRegistrationCubit(false):
                context.read<RegistrationCubit>().setRegistrationCubit(true);
              },
              child: state == true ? Text("Giriş Yap") : Text("Kaydol"),
            );
      }),
    );
  }
}
