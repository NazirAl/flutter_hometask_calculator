import 'package:flutter/material.dart';
import 'package:flutter_hometask_calculator/result_screen.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xff0A0E21),
        scaffoldBackgroundColor: const Color(0xff0A0E21),
      ),
      home: HomePage(),
    );
  }
}
