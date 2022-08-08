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
            child: SingleChildScrollView(
              child: Container(
                height: 520,
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                        height: 220,
                        child: Image.network(marvelData.imageAsset)),
                    Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            Text(
                              marvelData.name,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "(${marvelData.aliasName})",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        )),
                    Container(
                        padding: EdgeInsets.only(top: 10, bottom: 8),
                        child: Text(
                          "Category",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    CategoryBarYellow(marvelData.categories),
                    SizedBox(height: 10),
                    Container(
                        padding: EdgeInsets.only(top: 10, bottom: 8),
                        child: Text(
                          "Description",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(40, 0, 40, 10),
                        child: SingleChildScrollView(
                          child: Text(
                            marvelData.description,
                            textAlign: TextAlign.center,
                            style: TextStyle(),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment(0.88, 0.95),
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _FavButton(),
                  IconButton(onPressed: null, icon: Icon(Icons.share))
                ],
              )),
        )
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

class _FavButton extends StatefulWidget {
  const _FavButton({Key? key}) : super(key: key);

  @override
  State<_FavButton> createState() => __FavButtonState();
}

class __FavButtonState extends State<_FavButton> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          showDialog(
            context: context,
            builder: (context) {
              if (isFav == false) {
                isFav = true;
                return AlertDialog(content: Text("Favorite Added"));
              } else {
                isFav = false;
                return AlertDialog(content: Text("Favorite Removed"));
              }
            },
          );
        });
      },
      icon: Icon(
        isFav ? Icons.favorite : (Icons.favorite_border),
        color: Colors.red,
      ),
    );
  }
}
