import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'altinPirsing.dart';
import 'celikPirsing.dart';
import 'gumusPirsing.dart';
import 'titanyumPirsing.dart';

class PirsingSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(
              "PIERCING MODELLERİMİZ",
              style: GoogleFonts.jura(
                  fontWeight: FontWeight.w900, color: Colors.orange),
              textAlign: TextAlign.center,
            ),
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text(
                    "ALTIN",
                    style: GoogleFonts.jura(
                        fontWeight: FontWeight.w900,
                        color: Colors.orange,
                        fontSize: 11),
                  ),
                ),
                Tab(
                  child: Text(
                    "GÜMÜŞ",
                    style: GoogleFonts.jura(
                        fontWeight: FontWeight.w900,
                        color: Colors.orange,
                        fontSize: 11),
                  ),
                ),
                Tab(
                  child: Text(
                    "TİTANYUM",
                    style: GoogleFonts.jura(
                        fontWeight: FontWeight.w900,
                        color: Colors.orange,
                        fontSize: 11),
                  ),
                ),
                Tab(
                  child: Text(
                    "ÇELİK",
                    style: GoogleFonts.jura(
                        fontWeight: FontWeight.w900,
                        color: Colors.orange,
                        fontSize: 11),
                  ),
                ),
              ],
            ),
          ),
          body: Container(
            alignment: Alignment.center,
            child: TabBarView(
              children: [Altin(), Gumus(), Titanyum(), Celik()],
            ),
          ),
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
        ),
      ),
    );
  }
}
