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
        LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth >= 600) {
              return Padding(
                padding: const EdgeInsets.only(top: 60),
                child: TabletInfoPage(marvelData: marvelData),
              );
            } else {
              return MobileInfoPage(marvelData: marvelData);
            }
          },
        ),
        Align(
          alignment: const Alignment(0.88, 0.95),
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
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
      padding: const EdgeInsets.all(7),
      child: Text(
        value,
        style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class MobileInfoPage extends StatelessWidget {
  final MarvelData marvelData;

  const MobileInfoPage({Key? key, required this.marvelData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: SingleChildScrollView(
          child: Container(
            height: 520,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                    height: 220, child: Image.network(marvelData.imageAsset)),
                Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Text(
                          marvelData.name,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "(${marvelData.aliasName})",
                          style: const TextStyle(fontSize: 12),
                        )
                      ],
                    )),
                Container(
                    padding: const EdgeInsets.only(top: 10, bottom: 8),
                    child: const Text(
                      "Category",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                CategoryBarYellow(marvelData.categories),
                const SizedBox(height: 10),
                Container(
                    padding: const EdgeInsets.only(top: 10, bottom: 8),
                    child: const Text(
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
                        style: const TextStyle(),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TabletInfoPage extends StatelessWidget {
  final MarvelData marvelData;
  const TabletInfoPage({Key? key, required this.marvelData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Container(
          constraints: const BoxConstraints(minHeight: 250),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                            height: 180,
                            child: Image.network(marvelData.imageAsset)),
                        Text(
                          marvelData.name,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "(${marvelData.aliasName})",
                          style: const TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Container(
                            padding: const EdgeInsets.only(top: 10, bottom: 8),
                            child: Column(
                              children: [
                                const Text(
                                  "Category",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                CategoryBarYellow(marvelData.categories),
                              ],
                            )),
                        Container(
                            padding: const EdgeInsets.only(top: 10, bottom: 8),
                            child: const Text(
                              "Description",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        Text(
                          marvelData.description,
                          textAlign: TextAlign.center,
                          style: const TextStyle(),
                        ),
                      ],
                    ),
                  )
                  // pindahin kolom disini
                ],
              ),
            ],
          ),
        ),
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
                return const AlertDialog(content: Text("Favorite Added"));
              } else {
                isFav = false;
                return const AlertDialog(content: Text("Favorite Removed"));
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
