

import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);
  
  void increment() => emit(state + 1);

  void decreament() {
    emit(state - 1);
  }

  void twice() {
    emit(state * 2);
  }

  void minusTwo() {
    emit(state - 2);
  }

  void reset(){
      emit(0);
  }
  
}