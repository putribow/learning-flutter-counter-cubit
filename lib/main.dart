import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_bloc/app.dart';
import 'package:flutter_application_bloc/counter_observe.dart';

void main() {
  Bloc.observer = const CounterObserver();

  runApp(const CounterApp());

}
