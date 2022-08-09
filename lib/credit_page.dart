import 'package:flutter/material.dart';

class CreditPage extends StatelessWidget {
  const CreditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                height: 200,
                width: 200,
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black),
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                        image: AssetImage('assets/images/identity.png')))),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text("Created by "),
                Text(
                  "Lutfi Aldri Permana",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text("Thanks to "),
                Text(
                  "MarvelFandom & Laufman Art",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
