import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/images/intro.jpeg"),
          Text("Category", style: TextStyle(fontWeight: FontWeight.bold),),
          CategoryBarYellow("Savage Avengers (Earth-616)")
        ],
      ),
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
