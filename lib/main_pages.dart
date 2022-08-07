import 'package:flutter/material.dart';
import 'package:marvel_fandom_app/info_page.dart';
import 'package:marvel_fandom_app/model/data.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          crossAxisCount: 2,
          children: marvelDataList.map((data) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return InfoPage();
                },));
              },
              child: Card(
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    Expanded(child: Image.asset(data.imageAsset)),
                    Container(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          data.name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
            );
          }).toList()),
    );
  }
}