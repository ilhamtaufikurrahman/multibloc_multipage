import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/color_bloc.dart';
import 'bloc/counter_bloc.dart';
import 'main_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorBloc colorBloc = BlocProvider.of<ColorBloc>(context);
    CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);

    return BlocBuilder<ColorBloc, Color>(
      builder: (context, color) => MainPage(
          backgrondColor: color,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocBuilder<CounterBloc, int>(
                  builder: (context, number) => GestureDetector(
                    onTap: () {
                      counterBloc.add(number++);
                    },
                    child: Text(
                      number.toString(),
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      shape: CircleBorder(),
                      onPressed: () {
                        colorBloc.add(ColorEvent.to_pink);
                      },
                      color: Colors.pink,
                    ),
                    RaisedButton(
                      shape: CircleBorder(),
                      onPressed: () {
                        colorBloc.add(ColorEvent.to_amber);
                      },
                      color: Colors.amber,
                    ),
                    RaisedButton(
                      shape: CircleBorder(),
                      onPressed: () {
                        colorBloc.add(ColorEvent.to_purple);
                      },
                      color: Colors.purple,
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
