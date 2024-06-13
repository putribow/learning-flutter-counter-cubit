import 'package:bloc/bloc.dart';

// menyediakan banyak function untuk memantau state bloc

class CounterObserver extends BlocObserver {
  const CounterObserver();


  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    // TODO: implement onChange
    print(change);
  }
}