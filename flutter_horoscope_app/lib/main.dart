import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_horoscope_app/burc_listesi.dart';
import 'package:flutter_horoscope_app/route_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}