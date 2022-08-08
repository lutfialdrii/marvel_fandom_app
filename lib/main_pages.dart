import 'package:flutter/material.dart';
import 'package:marvel_fandom_app/info_page.dart';
import 'package:marvel_fandom_app/model/data.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Marvel Vandom"), actions: [IconButton(onPressed: null, icon: Icon(Icons.info_sharp, color: Colors.white,))],),
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: GridView.count(
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            crossAxisCount: 2,
            children: marvelDataList.map((data) {
              return InkWell(
                onTap: () {
                  final MarvelData marvelData = data;
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return InfoPage(marvelData: marvelData);
                    },
                  ));
                },
                child: Card(
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      Expanded(child: Image.network(data.imageAsset)),
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
      ),
    );
  }
}
