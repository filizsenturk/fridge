import 'package:flutter_bloc/flutter_bloc.dart';

class SelectScreenCubit extends Cubit<int> {
  SelectScreenCubit() : super(0);

  setScreen(int index){
    emit(index);
  }
  getScreen(){
    return state;
  }
}
