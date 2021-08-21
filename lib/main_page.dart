import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  final Color backgrondColor;
  final Widget body;

  const MainPage(
      {Key? key, this.backgrondColor = Colors.pink, required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: backgrondColor,
          title: Text('Multibloc & Multipage'),
        ),
        body: body);
  }
}
