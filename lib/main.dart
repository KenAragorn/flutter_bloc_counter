import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter/blocs/counter_bloc.dart';
import 'package:flutter_counter/screens/counter_page.dart';

void main() => runApp(CounterApp());

class CounterApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Bloc Counter Idea",
      home: BlocProvider<CounterBloc>(
        builder: (context) => CounterBloc(),  //Here, we are making an instance of CounterBloc through BlocProvider
        child: CounterPage(),
      ),
    );
  }
}

