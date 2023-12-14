import 'package:flutter_bloc/flutter_bloc.dart';

class RegistrationCubit extends Cubit<bool> {
  RegistrationCubit() : super(true);

  setRegistrationCubit(bool value){
    emit(value);
  }

  getRegistrationCubit(){
    return state;
  }
}





