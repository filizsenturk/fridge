import 'package:bloc/bloc.dart';

class BottomBarIndexCubit extends Cubit<int> {
  BottomBarIndexCubit() : super(0);

  void changeState(int index) async {
    emit(index);
  }

  int index() {
    return state;
  }
}
