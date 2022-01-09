import 'package:firebase_database/firebase_database.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:google_fonts/google_fonts.dart';

class HesapAyarlari extends StatefulWidget {
  final String gonderAdSoyad;
  final String gonderNick;
  final String gonderTel;
  final String gonderMail;
  final String gonderSifre;
  const HesapAyarlari(
      {Key key,
      this.gonderSifre,
      this.gonderAdSoyad,
      this.gonderNick,
      this.gonderTel,
      this.gonderMail})
      : super(key: key);

  @override
  _HesapAyarlariState createState() => _HesapAyarlariState();
}

String yazilanNick,
    yazilanAdSoyad,
    yazilanMail,
    yazilanTel,
    yazilanSifre,
    yazilanTekrarSifre,
    yazilanEskiSifre;

class _HesapAyarlariState extends State<HesapAyarlari> {
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
                    textStyle: GoogleFonts.jura(color: Colors.grey[200]),
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
                        labelText: "${widget.gonderNick}",
                        labelStyle: GoogleFonts.jura(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      onChanged: (String a) {
                        setState(() {
                          nick_kontrol(a);
                        });
                      },
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
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          padding: EdgeInsets.fromLTRB(80, 20, 80, 20),
                          color: Color.fromRGBO(230, 126, 34, 1.0),
                          elevation: 2.0,
                          splashColor: Colors.white,
                          onPressed: () => {nick_degistir()})),
                ],
              ),
              ExpansionTile(
                title: Text(
                  "AD VE SOYAD DEĞİŞİKLİĞİ",
                  style: GoogleFonts.jura(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    textStyle: GoogleFonts.jura(color: Colors.grey[200]),
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
                        labelText: "${widget.gonderAdSoyad}",
                        labelStyle: GoogleFonts.jura(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      onChanged: (String b) {
                        setState(() {
                          adSoyad(b);
                        });
                      },
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
                              textStyle: GoogleFonts.jura(
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
                          onPressed: () => {adSoyaddegis()})),
                ],
              ),
              ExpansionTile(
                title: Text(
                  "E-MAİL DEĞİŞİKLİĞİ",
                  style: GoogleFonts.jura(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    textStyle: GoogleFonts.jura(color: Colors.grey[200]),
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
                        labelText: "${widget.gonderMail}",
                        labelStyle: GoogleFonts.jura(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      onChanged: (String c) {
                        setState(() {
                          mail(c);
                        });
                      },
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
                              textStyle: GoogleFonts.jura(
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
                          onPressed: () => {maildegis()})),
                ],
              ),
              ExpansionTile(
                title: Text(
                  "TELEFON NUMARASI DEĞİŞİKLİĞİ",
                  style: GoogleFonts.jura(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    textStyle: GoogleFonts.jura(color: Colors.grey[200]),
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
                        labelText: "${widget.gonderTel}",
                        labelStyle: GoogleFonts.jura(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      onChanged: (String d) {
                        setState(() {
                          tel(d);
                        });
                      },
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
                              textStyle: GoogleFonts.jura(
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
                          onPressed: () => {teldegis()})),
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
                        labelText: 'Eski Şifrenizi Giriniz',
                        labelStyle: GoogleFonts.jura(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      onChanged: (String g) {
                        setState(() {
                          yazilaneskisifre(g);
                        });
                      },
                    ),
                  ),
                  new Container(
                    color: Colors.grey,
                    margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 20.0),
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Yeni Şifrenizi Giriniz',
                        labelStyle: GoogleFonts.jura(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      onChanged: (String e) {
                        setState(() {
                          yazilansifre(e);
                        });
                      },
                    ),
                  ),
                  new Container(
                    color: Colors.grey,
                    margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 20.0),
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Yeni Şifrenizi Tekrar Giriniz',
                        labelStyle: GoogleFonts.jura(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      onChanged: (String f) {
                        setState(() {
                          yazilantekrarsifre(f);
                        });
                      },
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
                          onPressed: () => {sifreDegis()})),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  String nickKontrol;

  // ignore: non_constant_identifier_names
  Future nick_kontrol(a) async {
    yazilanNick = a;
    setState(() {
      final db = FirebaseDatabase.instance.reference();
      db
          .child("Kullaniciler/" + yazilanNick + "/Nick")
          .once()
          .then((DataSnapshot snapshot) {
        nickKontrol = '${snapshot.value}';
      });
    });
  }

  var ilk;
  String eskiNick, ad1, tel1, mail1, sfr;
  // ignore: non_constant_identifier_names
  Future nick_degistir() async {
    setState(() {
      final db = FirebaseDatabase.instance.reference();
      if (yazilanNick == "" || yazilanNick == null) {
        Toast.show("KULLANICI ADI BOŞ TANIMLANAMAZ", context,
            duration: 3, gravity: Toast.BOTTOM);
      } else {
        if (yazilanNick == nickKontrol) {
          Toast.show("BU KULLANICI ADI KULLANILMAKTADIR", context,
              duration: 3, gravity: Toast.BOTTOM);
        } else {
          if (yazilanAdSoyad == null || yazilanAdSoyad == "") {
            ad1 = '${widget.gonderAdSoyad}';
          } else {
            ad1 = yazilanAdSoyad;
          }
          if (yazilanMail == null || yazilanMail == "") {
            mail1 = '${widget.gonderMail}';
          } else {
            mail1 = yazilanMail;
          }
          if (yazilanTel == null || yazilanTel == "") {
            tel1 = '${widget.gonderTel}';
          } else {
            tel1 = yazilanTel;
          }
          if (dnm == null || dnm == "") {
            sfr = '${widget.gonderSifre}';
          } else {
            sfr = dnm;
          }

          db
              .child("Kullaniciler/" + '${widget.gonderNick}' + "/Nick")
              .once()
              .then((DataSnapshot snapshot) {
            ilk = '${snapshot.value}';
          });
          if (ilk == "null") {
            db.child("Kullaniciler/").child(eskiNick).remove();
            db.child("Kullaniciler/").child(yazilanNick).remove();
            db.child("Kullaniciler/" + yazilanNick).set({
              "Ad": ad1,
              "Nick": yazilanNick,
              "Posta": mail1,
              "Tel": tel1,
              "Sifre": sfr,
            });
            eskiNick = yazilanNick;
          } else {
            //ilk greceği yer
            db.child("Kullaniciler/").child('${widget.gonderNick}').remove();
            db.child("Kullaniciler/").child(yazilanNick).remove();
            db.child("Kullaniciler/" + yazilanNick).set({
              "Ad": ad1,
              "Nick": yazilanNick,
              "Posta": mail1,
              "Tel": tel1,
              "Sifre": sfr,
            });
            eskiNick = yazilanNick;
          }

          Toast.show("DEĞİŞİKLİĞİNİZ BAŞARIYLA GERÇEKLEŞTİ", context,
              duration: 3, gravity: Toast.BOTTOM);
        }
      }
    });
  }

  Future adSoyad(b) async {
    yazilanAdSoyad = b;
  }

  var al;
  Future adSoyaddegis() async {
    final db = FirebaseDatabase.instance.reference();

    setState(() {
      db
          .child("Kullaniciler/" + "${widget.gonderNick}" + "/Nick")
          .once()
          .then((DataSnapshot snapshot) {
        al = '${snapshot.value}';
      });
    });

    if (al == "null") {
      db.child("Kullaniciler/" + eskiNick).update({
        "Ad": yazilanAdSoyad,
      });
    } else {
      if (yazilanNick == "" || yazilanNick == null) {
        db.child("Kullaniciler/" + "${widget.gonderNick}").update({
          "Ad": yazilanAdSoyad,
        });
      } else {
        db.child("Kullaniciler/" + yazilanNick).update({
          "Ad": yazilanAdSoyad,
        });
      }
    }
  }

  Future mail(c) async {
    yazilanMail = c;
  }

  var al1;
  Future maildegis() async {
    final db = FirebaseDatabase.instance.reference();

    setState(() {
      db
          .child("Kullaniciler/" + "${widget.gonderNick}" + "/Nick")
          .once()
          .then((DataSnapshot snapshot) {
        al1 = '${snapshot.value}';
      });
    });

    if (al1 == "null") {
      db.child("Kullaniciler/" + eskiNick).update({
        "Posta": yazilanMail,
      });
    } else {
      if (yazilanNick == "" || yazilanNick == null) {
        db.child("Kullaniciler/" + "${widget.gonderNick}").update({
          "Posta": yazilanMail,
        });
      } else {
        db.child("Kullaniciler/" + yazilanNick).update({
          "Posta": yazilanMail,
        });
      }
    }
  }

  Future tel(d) async {
    yazilanTel = d;
  }

  var al2;
  Future teldegis() async {
    final db = FirebaseDatabase.instance.reference();

    setState(() {
      db
          .child("Kullaniciler/" + "${widget.gonderNick}" + "/Nick")
          .once()
          .then((DataSnapshot snapshot) {
        al2 = '${snapshot.value}';
      });
    });

    if (al2 == "null") {
      db.child("Kullaniciler/" + eskiNick).update({
        "Tel": yazilanTel,
      });
    } else {
      if (yazilanNick == "" || yazilanNick == null) {
        db.child("Kullaniciler/" + "${widget.gonderNick}").update({
          "Tel": yazilanTel,
        });
      } else {
        db.child("Kullaniciler/" + yazilanNick).update({
          "Tel": yazilanTel,
        });
      }
    }
  }

  Future yazilansifre(e) async {
    yazilanSifre = e;
  }

  Future yazilantekrarsifre(f) async {
    yazilanTekrarSifre = f;
  }

  Future yazilaneskisifre(g) async {
    yazilanEskiSifre = g;
  }

  var al3, gelenS, dnm;
  Future sifreDegis() async {
    final db = FirebaseDatabase.instance.reference();
    if (yazilanSifre == null ||
        yazilanSifre == "" ||
        yazilanTekrarSifre == null ||
        yazilanTekrarSifre == "") {
      Toast.show("LÜTFEN BOŞ DEĞER TANIMLAMAYINIZ", context,
          duration: 3, gravity: Toast.BOTTOM);
    } else {
      if (yazilanEskiSifre == gelenS) {
        if (yazilanSifre == yazilanTekrarSifre) {
          setState(() {
            db
                .child("Kullaniciler/" + "${widget.gonderNick}" + "/Nick")
                .once()
                .then((DataSnapshot snapshot) {
              al3 = '${snapshot.value}';
            });
          });
          if (al3 == "null") {
            db.child("Kullaniciler/" + eskiNick).update({
              "Sifre": yazilanSifre,
            });
            dnm = yazilanSifre;
          } else {
            if (yazilanNick == "" || yazilanNick == null) {
              db.child("Kullaniciler/" + "${widget.gonderNick}").update({
                "Sifre": yazilanSifre,
              });
              dnm = yazilanSifre;
            } else {
              db.child("Kullaniciler/" + yazilanNick).update({
                "Sifre": yazilanSifre,
              });
              dnm = yazilanSifre;
            }
          }
          //
        } else {
          Toast.show("GİRİDİĞİNİZ ŞİFRELER UYUŞMAMAKTATIR", context,
              duration: 3, gravity: Toast.BOTTOM);
        }
      } else {
        db
            .child("Kullaniciler/" + "${widget.gonderNick}" + "/Sifre")
            .once()
            .then((DataSnapshot snapshot) {
          dnm = '${snapshot.value}';
        });
        if (dnm == yazilanEskiSifre) {
          if (al3 == "null") {
            db.child("Kullaniciler/" + eskiNick).update({
              "Sifre": yazilanSifre,
            });
            dnm = yazilanSifre;
          } else {
            if (yazilanNick == "" || yazilanNick == null) {
              db.child("Kullaniciler/" + "${widget.gonderNick}").update({
                "Sifre": yazilanSifre,
              });
              dnm = yazilanSifre;
            } else {
              db.child("Kullaniciler/" + yazilanNick).update({
                "Sifre": yazilanSifre,
              });
              dnm = yazilanSifre;
            }
          }
        } else {
          print(dnm);
          Toast.show("LÜTFEN İLK ŞİFRENİZİ TEKRAR GİRİNİZ", context,
              duration: 3, gravity: Toast.BOTTOM);
        }
      }
    }
  }
}

/*
  ad değiştirildikten sonra kullanici adı kısmındaki verileri de düzenlemeyi unutma amk gerizekalısı 

*/
