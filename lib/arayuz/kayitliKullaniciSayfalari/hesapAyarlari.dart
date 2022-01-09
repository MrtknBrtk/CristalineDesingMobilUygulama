import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HesapAyarlari extends StatefulWidget {
  final String degerGonder;

  const HesapAyarlari({Key key, this.degerGonder}) : super(key: key);

  @override
  _HesapAyarlariState createState() => _HesapAyarlariState();
}

class _HesapAyarlariState extends State<HesapAyarlari> {
  String nick, adsoyad, tel, mail, pas;
  int tek = 0;
  String kullanilandeger, a;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "HESAP AYARLARI",
          style: GoogleFonts.jura(
            fontSize: 23,
            fontWeight: FontWeight.w900,
            color: Colors.orange,
          ),
        ),
        backgroundColor: Color.alphaBlend(Colors.black, Colors.black),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ExpansionTile(
                title: Text(
                  "KULLANICI ADI DEĞİŞİKLİĞİ",
                  style: GoogleFonts.jura(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    textStyle: TextStyle(color: Colors.grey[200]),
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_downward,
                  color: Colors.orange,
                ),
                children: <Widget>[
                  new Container(
                    color: Colors.grey,
                    margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 20.0),
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "yeni kullanici adınızı giriniz",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  new Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: Text(
                            'DEĞİŞİKLİĞİ ONAYLA',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.jura(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          padding: EdgeInsets.fromLTRB(80, 20, 80, 20),
                          color: Color.fromRGBO(230, 126, 34, 1.0),
                          elevation: 2.0,
                          splashColor: Colors.white,
                          onPressed: () => {})),
                ],
              ),
              ExpansionTile(
                title: Text(
                  "AD VE SOYAD DEĞİŞİKLİĞİ",
                  style: GoogleFonts.jura(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    textStyle: TextStyle(color: Colors.grey[200]),
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_downward,
                  color: Colors.orange,
                ),
                children: <Widget>[
                  new Container(
                    color: Colors.grey,
                    margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 20.0),
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "ad - soyad giriniz",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  new Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: Text(
                            'DEĞİŞİKLİĞİ ONAYLA',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.jura(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          padding: EdgeInsets.fromLTRB(80, 20, 80, 20),
                          color: Color.fromRGBO(230, 126, 34, 1.0),
                          elevation: 2.0,
                          splashColor: Colors.white,
                          onPressed: () => {})),
                ],
              ),
              ExpansionTile(
                title: Text(
                  "E-MAİL DEĞİŞİKLİĞİ",
                  style: GoogleFonts.jura(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    textStyle: TextStyle(color: Colors.grey[200]),
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_downward,
                  color: Colors.orange,
                ),
                children: <Widget>[
                  new Container(
                    color: Colors.grey,
                    margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 20.0),
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "e-mail adresinizi giriniz",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  new Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: Text(
                            'DEĞİŞİKLİĞİ ONAYLA',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.jura(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          padding: EdgeInsets.fromLTRB(80, 20, 80, 20),
                          color: Color.fromRGBO(230, 126, 34, 1.0),
                          elevation: 2.0,
                          splashColor: Colors.white,
                          onPressed: () => {})),
                ],
              ),
              ExpansionTile(
                title: Text(
                  "TELEFON NUMARASI DEĞİŞİKLİĞİ",
                  style: GoogleFonts.jura(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    textStyle: TextStyle(color: Colors.grey[200]),
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_downward,
                  color: Colors.orange,
                ),
                children: <Widget>[
                  new Container(
                    color: Colors.grey,
                    margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 20.0),
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "11 haneli telefon numaranızı giriniz",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  new Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: Text(
                            'DEĞİŞİKLİĞİ ONAYLA',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.jura(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          padding: EdgeInsets.fromLTRB(80, 20, 80, 20),
                          color: Color.fromRGBO(230, 126, 34, 1.0),
                          elevation: 2.0,
                          splashColor: Colors.white,
                          onPressed: () => {})),
                ],
              ),
              ExpansionTile(
                title: Text(
                  "ŞİFRE DEĞİŞİKLİĞİ",
                  style: GoogleFonts.jura(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    textStyle: TextStyle(color: Colors.grey[200]),
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_downward,
                  color: Colors.orange,
                ),
                children: <Widget>[
                  new Container(
                    color: Colors.grey,
                    margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 20.0),
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'eski şifrenizi giriniz',
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  new Container(
                    color: Colors.grey,
                    margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 20.0),
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'yeni şifrenizi giriniz',
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  new Container(
                    color: Colors.grey,
                    margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 20.0),
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'yeni şifrenizi tekrar giriniz',
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  new Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: Text(
                            'DEĞİŞİKLİĞİ ONAYLA',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.jura(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          padding: EdgeInsets.fromLTRB(80, 20, 80, 20),
                          color: Color.fromRGBO(230, 126, 34, 1.0),
                          elevation: 2.0,
                          splashColor: Colors.white,
                          onPressed: () => {})),
                ],
              ),
            ],
          ),
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
              leading: Icon(
                Icons.contact_support,
                color: Colors.orange,
              ),
              title: Text(
                "CANLI DESTEK",
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
              onTap: () {},
            ),
            ListTile(
              tileColor: Colors.black,
              leading: Icon(
                Icons.whatshot_sharp,
                color: Colors.orange,
              ),
              title: Text(
                "SIKÇA SORULAN SORULAR",
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
                Navigator.pushNamed(context, "/sss");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.analytics,
                color: Colors.orange,
              ),
              title: Text(
                "GERİ BİLDİRİM",
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
                Navigator.pushNamed(context, "/geriBildirim");
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
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

//initState

  Future verileriCek() async {
    final db1 = FirebaseDatabase.instance.reference();

    db1
        .child("Kullaniciler/" + "BRTK" + "/Nick")
        .once()
        .then((DataSnapshot snapshot) {
      nick = '${snapshot.value}';
    });
    db1
        .child("Kullaniciler/" + "BRTK" + "/Ad")
        .once()
        .then((DataSnapshot snapshot) {
      adsoyad = '${snapshot.value}';
    });
    db1
        .child("Kullaniciler/" + kullanilandeger + "/Tel")
        .once()
        .then((DataSnapshot snapshot) {
      tel = '${snapshot.value}';
    });
    db1
        .child("Kullaniciler/" + this.kullanilandeger + "/Posta")
        .once()
        .then((DataSnapshot snapshot) {
      mail = '${snapshot.value}';
    });
    db1
        .child("Kullaniciler/" + this.kullanilandeger + "/Sifre")
        .once()
        .then((DataSnapshot snapshot) {
      pas = '${snapshot.value}';
    });
    print(nick);
    print(adsoyad);
    print(tel);
    print(mail);
    print(pas);
  }
}
