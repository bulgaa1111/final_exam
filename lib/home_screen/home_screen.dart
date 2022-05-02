import 'package:flutter/material.dart';
import 'package:example/home_screen/get_it.dart';
import 'package:example/home_screen/home_screen_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final manager = getIt<HomeScreenManager>();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Color>(
        valueListenable: manager.colorNotifier,
        builder: (context, color, child) {
          return Scaffold(
            backgroundColor: color,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      manager.chooseRed();
                    },
                    child: Text('Red'),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      manager.chooseBlue();
                    },
                    child: Text('Blue'),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
