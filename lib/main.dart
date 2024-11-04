import 'package:demo_bloc/plus_minus_page/plus_minus_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'plus_minus_page/bloc/plus_minus_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlusMinusBloc(),
      child: MaterialApp(
        title: 'Bloc demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const PlusMinusView(),
      ),
    );
  }
}

