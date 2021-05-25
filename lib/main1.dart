import 'package:app/GameScreens/ScreenManager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('2DGame'),
        ),
        body: screenManager.widget
      ),
    );
  }
}
