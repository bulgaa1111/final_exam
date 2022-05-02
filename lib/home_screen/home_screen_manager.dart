import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenManager {
  final colorNotifier = ValueNotifier<Color>(Colors.white);

  void chooseRed() {
    colorNotifier.value = Colors.red;
  }

  void chooseBlue() {
    colorNotifier.value = Colors.blue;
  }
}
