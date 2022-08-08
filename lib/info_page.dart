import 'package:flutter/material.dart';
import 'package:marvel_fandom_app/model/data.dart';

class InfoPage extends StatelessWidget {
  final MarvelData marvelData;
  const InfoPage({Key? key, required this.marvelData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Stack(children: [
        AppBar(
          title: Text(marvelData.name),
        ),
        SafeArea(
          child: Center(
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
                      child: Image.asset(marvelData.imageAsset)),
                  Container(
                      padding: EdgeInsets.only(top: 10, bottom: 8),
                      child: Text(
                        marvelData.name,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
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
                          marvelData.description,
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
