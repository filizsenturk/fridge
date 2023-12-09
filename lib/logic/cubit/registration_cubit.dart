import 'package:flutter_bloc/flutter_bloc.dart';

class RegistrationCubit extends Cubit<int> {
  RegistrationCubit() : super(0);

  setRegistration(int index){
    emit(index);
  }
  getRegistration(){
    return state;
  }
}
