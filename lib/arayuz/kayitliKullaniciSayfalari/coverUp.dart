import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:google_fonts/google_fonts.dart';

class CoverUp extends StatefulWidget {
  @override
  _CoverUpState createState() => _CoverUpState();
}

int i, tek = 0;

String isimleri, downloadURL;
// ignore: deprecated_member_use
var diziURL = new List();
// ignore: deprecated_member_use
var diziIsimler = new List();
// ignore: deprecated_member_use
var diziU = new List();

class _CoverUpState extends State<CoverUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "COVER-UP ÇALIŞMALARIMIZ",
          style: GoogleFonts.jura(
              fontWeight: FontWeight.w900, color: Colors.orange),
        ),
        backgroundColor: Color.alphaBlend(Colors.black, Colors.black),
      ),
      body: ekran(),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Align(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "dosyalar/img/logoturuncu.png",
                      width: 200,
                      height: 130,
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            ListTile(
              //açılmayan
              leading: Icon(
                Icons.home,
                color: Colors.orange,
              ),
              title: Text(
                "HİZMETLERİMİZ",
                style: GoogleFonts.jura(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  textStyle: TextStyle(color: Colors.black),
                ),
              ),

              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.orange,
              ),
              onTap: () {
                Navigator.pushNamed(context, "/adminAnaSayfa");
              },
            ),
            ListTile(
              tileColor: Colors.black,
              //açılmayan
              leading: Icon(
                Icons.screen_share,
                color: Colors.orange,
              ),
              title: Text(
                "CESARETİNİ VİCUDUNA YANSIT",
                style: GoogleFonts.jura(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  textStyle: TextStyle(color: Colors.white),
                ),
              ),

              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.orange,
              ),
              onTap: () {},
            ),
            ExpansionTile(
              //alta açılan menü
              leading: Icon(
                Icons.grade,
                color: Colors.orange,
              ),
              title: Text(
                "GALERİMİZ",
                style: GoogleFonts.jura(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
              trailing: Icon(Icons.arrow_downward, color: Colors.orange),
              children: <Widget>[
                ListTile(
                  title: Text(
                    "DÖVME",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.jura(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.orange,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/Dovme");
                  },
                ),
                ListTile(
                  title: Text(
                    "PIERCING",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.jura(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.orange,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/pirsing");
                  },
                ),
                ListTile(
                  title: Text(
                    "COVER UP ÇALIŞMALARIMIZ",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.jura(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.orange,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/coverUp");
                  },
                ),
              ],
            ),
            ListTile(
              tileColor: Colors.black,
              leading: Icon(Icons.stream, color: Colors.orange),
              title: Text(
                "HAKKIMIZDA",
                style: GoogleFonts.jura(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.orange,
              ),
              onTap: () {
                Navigator.pushNamed(context, "/hakkimizda");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.call,
                color: Colors.orange,
              ),
              title: Text(
                "İLETİŞİM",
                style: GoogleFonts.jura(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.orange),
              onTap: () {
                Navigator.pushNamed(context, "/iletisim");
              },
            ),
            ListTile(
              tileColor: Colors.black,
              leading: Icon(
                Icons.date_range,
                color: Colors.orange,
              ),
              title: Text(
                "RANDEVU AL",
                style: GoogleFonts.jura(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.orange,
              ),
              onTap: () {
                Navigator.pushNamed(context, "/randevuAl");
              },
            ),
            ListTile(
              tileColor: Colors.white,
              leading: Icon(
                Icons.whatshot_sharp,
                color: Colors.orange,
              ),
              title: Text(
                "SIKÇA SORULAN SORULAR",
                style: GoogleFonts.jura(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.orange,
              ),
              onTap: () {
                Navigator.pushNamed(context, "/sss");
              },
            ),
            ListTile(
              tileColor: Colors.black,
              leading: Icon(
                Icons.settings,
                color: Colors.orange,
              ),
              title: Text(
                "HESAP AYARLARI",
                style: GoogleFonts.jura(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.orange,
              ),
              onTap: () {
                Navigator.pushNamed(context, "/Dogrulama");
              },
            ),
            ListTile(
              tileColor: Colors.white,
              leading: Icon(
                Icons.whatshot_sharp,
                color: Colors.orange,
              ),
              title: Text(
                "DESTEK",
                style: GoogleFonts.jura(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.orange,
              ),
              onTap: () {
                Navigator.pushNamed(context, "/Oneriler");
              },
            ),
          ],
        ),
      ),
    );
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
        .child("CoverUp/")
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
