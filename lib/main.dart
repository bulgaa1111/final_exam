import 'package:example/home_screen/get_it.dart';
import 'package:example/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  setUpGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
