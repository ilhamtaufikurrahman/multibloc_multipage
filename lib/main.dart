import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multibloc_multipage/bloc/color_bloc.dart';

import 'bloc/counter_bloc.dart';
import 'first_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ColorBloc>(
          create: (context) => ColorBloc(Colors.pink),
        ),
        BlocProvider<CounterBloc>(
          create: (context) => CounterBloc(0),
        )
      ],
      child: MaterialApp(
        home: FirstPage(),
      ),
    );
  }
}
