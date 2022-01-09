import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class Altin extends StatefulWidget {
  @override
  _AltinState createState() => _AltinState();
}

int i, tek = 0;

String isimleri, downloadURL;
// ignore: deprecated_member_use
var diziURL = new List();
// ignore: deprecated_member_use
var diziIsimler = new List();
// ignore: deprecated_member_use
var diziU = new List();

class _AltinState extends State<Altin> {
  @override
  Widget build(BuildContext context) {
    return ekran();
  }

  Widget ekran() {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            for (int a = 0; a < diziU.length; a++)
              new Container(
                  margin: EdgeInsets.only(bottom: 10, top: 10),
                  child: Image.network(
                    diziU[a],
                    width: 300,
                    height: 300,
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
        .child("AltinPier/")
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
