import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled7/logic/cubit/registration_cubit.dart';

class SignInText extends StatefulWidget {
  const SignInText({super.key});

  @override
  State<SignInText> createState() => _SignInTextState();
}

class _SignInTextState extends State<SignInText> {
  onSignInClicked() {
    context.read<RegistrationCubit>().setRegistration(1);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 2.h),
      child: BlocBuilder<RegistrationCubit, int>(
        builder: (context, state) {
          return GestureDetector(
            onTap: (){
              state ==0 ? context.read<RegistrationCubit>().setRegistration(1):context.read<RegistrationCubit>().setRegistration(0);
            },
            child: Text(
               state==0 ?  "Giriş Yap" : "Kayıt Ol"
            ),
          );
        },
      ),
    );
  }
}
