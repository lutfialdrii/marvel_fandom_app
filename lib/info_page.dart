import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Stack(children: [
        AppBar(
          title: Text("Dr Strange"),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    height: 220,
                    child: Image.asset("assets/images/intro.jpeg")),
                Container(
                    padding: EdgeInsets.only(top: 10, bottom: 8),
                    child: Text(
                      "Category",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                CategoryBarYellow("Savage Avengers (Earth-616)"),
                SizedBox(height: 10),
                Container(
                    padding: EdgeInsets.only(top: 10, bottom: 8),
                    child: Text(
                      "Description",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Text(
                        "He was involved a car crash that so injured his hands that it stripped him of his fine motor skills, and when that happened, he became desperate to regain them and searched the globe for a cure, squandering a fortune to that end. And one was offered to him--not to cure his hands, but instead to cure his soul.",
                        textAlign: TextAlign.center,
                        style: TextStyle(),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class CategoryBarYellow extends StatelessWidget {
  String value;
  CategoryBarYellow(this.value, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.amber[400], borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.all(7),
      child: Text(
        value,
        style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
      ),
    );
  }
}
