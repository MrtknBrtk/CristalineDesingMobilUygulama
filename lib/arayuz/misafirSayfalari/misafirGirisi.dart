import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class MisafirGirisi extends StatefulWidget {
  @override
  _MisafirAnaSayfaState createState() => _MisafirAnaSayfaState();
}

int i, tek = 0;

String isimleri, downloadURL;
// ignore: deprecated_member_use
var diziURL = new List();
// ignore: deprecated_member_use
var diziIsimler = new List();
// ignore: deprecated_member_use
var diziU = new List();

class _MisafirAnaSayfaState extends State<MisafirGirisi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "HİZMETLERİMİZ",
            style: TextStyle(
              color: Colors.orange,
            ),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.black,
        ),
        body: ekran(),
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: Colors.black,
          color: Colors.orange,
          items: [
            TabItem(
              icon: Icons.stream,
            ), //hakkimixda
            TabItem(
              icon: Icons.camera,
            ), //galeri
            TabItem(
              icon: Icons.call,
            ), //iletişiöm
            TabItem(
              icon: Icons.whatshot_sharp,
            ), //SSS
          ],
          initialActiveIndex: 1, //optional, default as 0
          onTap: (int i) {
            setState(() {
              switch (i) {
                case 0:
                  Navigator.pushNamed(context, "/misafirHakkimizda");
                  break;
                case 1:
                  Navigator.pushNamed(context, "/misafirGirisi");
                  break;
                case 2:
                  Navigator.pushNamed(context, "/misafirIletisim");
                  break;
                case 3:
                  Navigator.pushNamed(context, "/misafirSSS");
                  break;
                default:
              }
            });
          },
        ));
  }

  Widget ekran() {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            for (int a = 0; a < diziU.length; a++)
              new Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Image.network(
                    diziU[a],
                  ))
          ],
        ),
      )),
    );
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      if (tek < 1) {
        listExample(diziURL, diziIsimler);
        tek++;
      }
    });
  } //initState
/*son kalan mantıksal sınama onda da verileri iki kez okumasını yanı ekran lar asasına geçişe bak büyük iht
mallen widget fonsiyon oluşturacaksın dene !!!!*/

  Future listExample(diziURL, diziIsimler) async {
    await Firebase.initializeApp();
    firebase_storage.ListResult result = await firebase_storage
        .FirebaseStorage.instance
        .ref()
        .child("Hizmetlerimiz/")
        .listAll();

    for (int i = 0; i < result.items.length; i++) {
      diziIsimler.add(result.items[i].fullPath.toString());

      downloadURL = await firebase_storage.FirebaseStorage.instance
          .ref(diziIsimler[i])
          .getDownloadURL();
      diziURL.add(downloadURL);
    }

    setState(() {
      diziU = diziURL;
    });
  }
}
