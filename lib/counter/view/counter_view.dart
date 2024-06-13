import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_bloc/counter/cubit/counter_cubit.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App', style: TextStyle(color: Colors.pink, fontSize: 30),
        ), 
        centerTitle: true,// Judul aplikasi
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text('$state', 
            style: TextStyle(fontSize: 30),
                );
          }
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            key: const Key('counterView_increament_fab'),
            child: const Icon(Icons.add, color: Colors.white,),
            onPressed: () {
              context.read<CounterCubit>().increment();
            }, backgroundColor: Colors.pink,
            ),  SizedBox(height: 16),
          FloatingActionButton(
            key: const Key('counterView_decreament_fab'),
            child: const Icon(Icons.remove, color: Colors.white,),
            onPressed: () {
              context.read<CounterCubit>().decreament();
            }, backgroundColor: Colors.pink ,
            ), SizedBox(height: 16),
          FloatingActionButton(
            key: const Key('counterView_clear_fab'),
            child: const Icon(Icons.clear, color: Colors.white,),
            onPressed: () {
              context.read<CounterCubit>().twice();
            }, backgroundColor: Colors.pink ,
            ), SizedBox(height: 16),
          FloatingActionButton(
            key: const Key('counterView_exposure_minus_2_fab'),
            child: const Icon(Icons.exposure_minus_2, color: Colors.white,),
            onPressed: () {
              context.read<CounterCubit>().minusTwo();
            }, backgroundColor: Colors.pink ,
            ), SizedBox(height: 16),
          FloatingActionButton(
            key: const Key('counterView_refresh_fab'),
            child: const Icon(Icons.refresh, color: Colors.white,),
            onPressed: () {
              context.read<CounterCubit>().reset();
            }, backgroundColor: Colors.pink ,
            ), SizedBox(height: 16),
        ],
      ),
        
      );
  }
}