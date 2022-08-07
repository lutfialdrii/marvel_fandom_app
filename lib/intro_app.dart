import 'package:flutter/material.dart';
import 'package:marvel_fandom_app/main_pages.dart';

class IntroApp extends StatelessWidget {
  const IntroApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/intro.jpeg'),
            Text("Hello Marvel Mania!")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) {
              return MainPage();
            },
          ));
        },
        child: Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}
