import 'package:flutter/cupertino.dart';

class homeScreenManager {
  final iconNotifier = ValueNotifier<MyIcon>(MyIcon.house);

  void chooseHouse() {
    iconNotifier.value = MyIcon.house;
  }

  void chooseSun() {
    iconNotifier.value = MyIcon.sun;
  }

  void chooseCloud() {
    iconNotifier.value = MyIcon.cloud;
  }
}

enum MyIcon {
  house,
  sun,
  cloud,
}
