import 'package:flutter/material.dart';
import 'package:marvel_fandom_app/main_pages.dart';

class IntroApp extends StatelessWidget {
  const IntroApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 20),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Image.asset('assets/images/intro.jpeg'),
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  if (constraints.maxHeight >= 500) {
                    return Image.asset(
                      'assets/images/intro.jpeg',
                      height: 300,
                    );
                  } else {
                    return Image.asset('assets/images/intro.jpeg');
                  }
                },
              ),
              const Text("Hello Marvel Mania!")
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) {
              return const MainPage();
            },
          ));
        },
        child: const Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}
