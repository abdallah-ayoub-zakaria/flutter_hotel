import 'package:flutter/material.dart';
import 'package:flutter_application_2_ui_hotel/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter ',
      home: MyHomePage(
        names: 'Explore',
      ),
    );
  }
}
