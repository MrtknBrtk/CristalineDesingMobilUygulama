import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toast/toast.dart';

// ignore: non_constant_identifier_names
dynamic GIRIS_EMAIL;
// ignore: non_constant_identifier_names
dynamic GIRIS_ADSOYAD;
// ignore: non_constant_identifier_names
dynamic GIRIS_TEL;

class KayitliKullanici extends StatefulWidget {
  @override
  _KayitliKullaniciState createState() => _KayitliKullaniciState();
}

class _KayitliKullaniciState extends State<KayitliKullanici> {
  String girisSifre, kullaniciAdim, sifre, nick, posta, adsoyad, tel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CRYSTALLINE DESIGN",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Image.asset(
              "dosyalar/img/logoturuncu.png",
              width: 500,
              height: 400,
            ),
            new Container(
              color: Colors.orange,
              margin: EdgeInsets.fromLTRB(10.0, 0, 10.0, 10.0),
              child: TextField(
                style: GoogleFonts.jura(
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                onChanged: (String onayKullaniciAdi) {
                  setState(() {
                    girisAdim(onayKullaniciAdi);
                  });
                },
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Kullanıcı Adı',
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  prefixText: "",
                  suffixText: "TR",
                  suffixStyle: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            new Container(
                color: Colors.orange,
                margin: EdgeInsets.fromLTRB(10.0, 0, 10.0, 50.0),
                child: new TextField(
                  style: GoogleFonts.jura(
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  onChanged: (String onaySifre) {
                    setState(() {
                      girisSifrem(onaySifre);
                    });
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Şifre',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                  ),
                  cursorColor: Colors.white,
                )),
            new Container(
                alignment: Alignment.center,
                // ignore: deprecated_member_use
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "GİRİŞ",
                    style: GoogleFonts.jura(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                  color: Colors.orange,
                  elevation: 2.0,
                  splashColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      kullaniciSorgu();
                    });
                  },
                )),
          ],
        ),
      )),
    );
  }

  Future girisAdim(onayKullaniciAdi) async {
    setState(() {
      this.kullaniciAdim = onayKullaniciAdi;
      final db = FirebaseDatabase.instance.reference();

      db
          .child("Kullaniciler/" + kullaniciAdim + "/Nick")
          .once()
          .then((DataSnapshot snapshot) {
        nick = '${snapshot.value}';
      });
      db
          .child("Kullaniciler/" + kullaniciAdim + "/Sifre")
          .once()
          .then((DataSnapshot snapshot) {
        sifre = '${snapshot.value}';
      });
      db
          .child("Kullaniciler/" + kullaniciAdim + "/Posta")
          .once()
          .then((DataSnapshot snapshot) {
        posta = '${snapshot.value}';
      });
      db
          .child("Kullaniciler/" + kullaniciAdim + "/Ad")
          .once()
          .then((DataSnapshot snapshot) {
        adsoyad = '${snapshot.value}';
      });
      db
          .child("Kullaniciler/" + kullaniciAdim + "/Tel")
          .once()
          .then((DataSnapshot snapshot) {
        tel = '${snapshot.value}';
      });
    });
  }

  Future girisSifrem(onaySifre) async {
    setState(() {
      this.girisSifre = onaySifre;
    });
  }

//kullanici sorgulama
  Future kullaniciSorgu() async {
    setState(() {
      if (kullaniciAdim == null ||
          girisSifre == null ||
          kullaniciAdim == "" ||
          girisSifre == "") {
        Toast.show("LÜTFEN ALANLARI BOŞ BIRAKMAYINIZ", context,
            duration: 3, gravity: Toast.BOTTOM);
      } else {
        if (kullaniciAdim == nick && sifre == girisSifre) {
          GIRIS_EMAIL = posta;
          GIRIS_ADSOYAD = adsoyad;
          GIRIS_TEL = tel;
          Navigator.pushNamed(context, "/adminAnaSayfa");
          //burda deger gönderiliyor shesap ayarları sayfasına

        } else {
          Toast.show(
              "SİFRENİZİ YADA KULLANICI ADINIZI HATALI GİRDİNİZ", context,
              duration: 3, gravity: Toast.BOTTOM);
        }
      }
    });
  }
}
