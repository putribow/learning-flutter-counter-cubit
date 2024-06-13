import 'package:flutter/material.dart';
import 'package:flutter_application_bloc/counter/counter.dart';

class CounterApp extends MaterialApp {
  const CounterApp({super.key}) : 
  super(
    home: const CounterPage(),
    );              
}