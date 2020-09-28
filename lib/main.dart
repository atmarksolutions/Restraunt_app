import 'package:flutter/material.dart';
import 'package:restaurant_app/all_dishes.dart';
import 'package:restaurant_app/delivery_screen.dart';
import 'package:restaurant_app/home_screen.dart';
import 'package:restaurant_app/location.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new MyHomePage(),
        '/location': (BuildContext context) => new Location(),
        '/delivery': (BuildContext context) => new DeliveryPage(),
        '/all dishes': (BuildContext context) => new AllDishes(),
      },
    );
  }
}
