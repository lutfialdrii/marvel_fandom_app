import 'package:flutter/material.dart';
import 'package:marvel_fandom_app/credit_page.dart';
import 'package:marvel_fandom_app/info_page.dart';
import 'package:marvel_fandom_app/model/data.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Marvel Fandom"),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const CreditPage();
                    },
                  ));
                },
                icon: const Icon(
                  Icons.info_sharp,
                  color: Colors.white,
                ))
          ],
        ),
        backgroundColor: Colors.grey[100],
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth < 600) {
              return ResponsivePage(count: 2);
            } else {
              return ResponsivePage(count: 4);
            }
          },
        ));
  }
}

class ResponsivePage extends StatelessWidget {
  int count;

  ResponsivePage({Key? key, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView.count(
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          crossAxisCount: count,
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
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          data.name,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
            );
          }).toList()),
    );
  }
}
