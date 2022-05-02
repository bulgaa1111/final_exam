import 'package:example/home_screen/get_it.dart';
import 'package:example/home_screen/home_screen_manager.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final manager = getIt<homeScreenManager>();
// final iconList = [
//   Icons.house,
//   Icons.sunny,
//   Icons.cloud,
// ];
  // var icon = Icons.house;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ValueListenableBuilder<MyIcon>(
              valueListenable: manager.iconNotifier,
              builder: (context, myIcon, child) {
                if (myIcon == MyIcon.sun) {
                  return Icon(Icons.sunny, size: 50);
                } else if (myIcon == MyIcon.cloud) {
                  return Icon(Icons.cloud, size: 50);
                } else {
                  return Icon(Icons.house, size: 50);
                }
              }),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  manager.chooseHouse();
                  // icon = Icons.house;
                  setState(() {});
                },
                child: Text('House'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  manager.chooseSun();
                  // icon = Icons.sunny;
                  setState(() {});
                },
                child: Text('Sun'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  manager.chooseCloud();
                  // icon = Icons.cloud;
                  setState(() {});
                },
                child: Text('Cloud'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
