import 'package:flutter/material.dart';
import 'package:marvel_fandom_app/intro_app.dart';
import 'package:marvel_fandom_app/main_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroApp(),
    );
  }
}
