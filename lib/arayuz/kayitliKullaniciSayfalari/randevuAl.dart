import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:mailer2/mailer.dart';
import 'package:tatto/kayitliKullanici.dart';
import 'package:toast/toast.dart';

import 'crediantial.dart';

class RandevuSayfasi extends StatefulWidget {
  @override
  _RandevuSayfasiState createState() => _RandevuSayfasiState();
}

// ignore: deprecated_member_use
var saatlerdizi = new List();
String tarih, kayitAdi, _value, b;
// ignore: deprecated_member_use
var kayitliSaatler = new List();
int sayac;
// ignore: deprecated_member_use
var kisiler = new List();

class _RandevuSayfasiState extends State<RandevuSayfasi> {
  @override
  Widget build(BuildContext context) {
    kayitAdi = GIRIS_EMAIL.toString();

    saatlerdizi = [
      "08:00",
      "09:00",
      "10:00",
      "11:00",
      "12:00",
      "14:00",
      "15:00",
      "16:00",
      "17:00",
      "18:00",
      "19:00",
      "20:00",
    ];
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(
          "RANDEVU AL",
          style: GoogleFonts.jura(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            color: Colors.orange,
          ),
        ),
        backgroundColor: Color.alphaBlend(Colors.black, Colors.black),
      ),
      body: Container(
          color: Colors.black,
          width: double.maxFinite,
          height: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                new Container(
                  width: 270,
                  height: 170,
                  margin: EdgeInsets.only(bottom: 30),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("dosyalar/img/logoturuncu.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                new Container(
                  color: Colors.black,
                  height: 65,
                  width: double.maxFinite,
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "ADINIZ & SOYADINIZ : ",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.jura(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: Colors.grey[350],
                        ),
                      ),
                      Text(
                        "" + GIRIS_ADSOYAD,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.jura(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                ),
                new Container(
                  height: 65,
                  width: double.maxFinite,
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "MA??L ADRES??N??Z : ",
                        style: GoogleFonts.jura(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: Colors.grey[350],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        "" + GIRIS_EMAIL,
                        style: GoogleFonts.jura(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: Colors.orange,
                        ),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                ),
                new Container(
                  height: 65,
                  width: double.maxFinite,
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "??RT??BAT NUMARANIZ : ",
                        style: GoogleFonts.jura(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: Colors.grey[350],
                        ),
                      ),
                      Text(
                        "" + GIRIS_TEL,
                        style: GoogleFonts.jura(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                ),
                new Container(
                  color: Colors.orange,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: DateTimePicker(
                    initialValue: '',
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2100),
                    dateLabelText: "TAR??H SE????N??Z",
                    dateMask: 'd MMM, yyyy',
                    style: GoogleFonts.jura(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                    cancelText: "??IKI??",
                    confirmText: "ONAYLA",
                    selectableDayPredicate: (date) {
                      return true;
                    },
                    onChanged: (val) {
                      setState(() {
                        tarih = val;
                      });
                    },
                    validator: (val) {
                      print(val);
                      return null;
                    },
                    onSaved: (val) => print(val),
                  ),
                ),
                new Container(
                  width: double.maxFinite,
                  height: 65,
                  margin: EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "SAAT SE????N??Z : ",
                        style: GoogleFonts.jura(
                          color: Colors.grey[350],
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      DropdownButton<String>(
                        iconEnabledColor: Colors.grey[350],
                        items: [
                          for (var i = 0; i < saatlerdizi.length; i++)
                            DropdownMenuItem<String>(
                              value: saatlerdizi[i].toString(),
                              child: Text(
                                saatlerdizi[i].toString(),
                                style: GoogleFonts.jura(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.orange,
                                ),
                              ),
                            ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        },
                        value: _value,
                        elevation: 2,
                        isDense: true,
                        iconSize: 40.0,
                        dropdownColor: Colors.black,
                      ),
                    ],
                  ),
                ),
                new Container(
                  height: 65,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "SE??T??????N??Z RANDEVU TAR??H?? : ",
                        style: GoogleFonts.jura(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.grey[350],
                        ),
                      ),
                      Text(
                        "" + tarih.toString(),
                        style: GoogleFonts.jura(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                ),
                new Container(
                  height: 65,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "SE??T??????N??Z RANDEVU SAAT??: ",
                        style: GoogleFonts.jura(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.grey[350],
                        ),
                      ),
                      Text(
                        "" + _value.toString(),
                        style: GoogleFonts.jura(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.orange,
                        ),
                      ),
                    ],
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
                          'RANDEVU ONAYLA',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.jura(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        padding: EdgeInsets.fromLTRB(97, 20, 108, 20),
                        color: Color.fromRGBO(230, 126, 34, 1.0),
                        elevation: 2.0,
                        splashColor: Colors.white,
                        onPressed: () {
                          randevuOnay();
                        })),
              ],
            ),
          )),
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
              //a????lmayan
              leading: Icon(
                Icons.home,
                color: Colors.orange,
              ),
              title: Text(
                "H??ZMETLER??M??Z",
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
              //a????lmayan
              leading: Icon(
                Icons.screen_share,
                color: Colors.orange,
              ),
              title: Text(
                "CESARET??N?? V??CUDUNA YANSIT",
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
              //alta a????lan men??
              leading: Icon(
                Icons.grade,
                color: Colors.orange,
              ),
              title: Text(
                "GALER??M??Z",
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
                    "D??VME",
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
                    "COVER UP ??ALI??MALARIMIZ",
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
                "??LET??????M",
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
                "SIK??A SORULAN SORULAR",
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

  Future randevuOnay() async {
    final db = FirebaseDatabase.instance.reference();
    db.child("RandevuSayac/Rsayac/sayac").once().then((DataSnapshot snapshot) {
      String a = '${snapshot.value}';
      sayac = int.parse(a);
    });

    if (_value == null ||
        tarih == null ||
        GIRIS_ADSOYAD == null ||
        GIRIS_EMAIL == null ||
        GIRIS_TEL == null) {
      print(_value);
      print(tarih);
      print(GIRIS_ADSOYAD);
      print(GIRIS_EMAIL);
      print(GIRIS_TEL);
      Toast.show("L??TFEN EKS??K B??LG?? BIRAKMAYINIZ", context,
          duration: 3, gravity: Toast.BOTTOM);
    } else {
      var options = new GmailSmtpOptions()
        ..username = EMAIL
        ..password = PASS;

      var emailTransport = new SmtpTransport(options);

      // Create our mail/envelope.
      var envelope = new Envelope()
        ..recipients.add(GIRIS_EMAIL) //alici  gmail i
        ..subject = 'Crystalline Design Randevu Bilgileriniz'
        ..text = 'Crystalline Design Randevu Bilgileriniz'
        ..html =
            '<h1>RANDEVU B??LG??LER??N??Z</h1><p>Crystalline design randevu tarihiniz   ' +
                tarih +
                '  ve saatiniz ' +
                _value +
                ' olarak belirlediniz sizi aram??zda g??rmekten memnun oluruz.</p>'; //burda mesaj i??eri??i var

      // Email it.
      emailTransport
          .send(envelope)
          .then((envelope) => {
                sayac = sayac + 1,
                db.child("Randevular/" + sayac.toString()).set({
                  "Id": sayac.toString(),
                  "AdSoyad": GIRIS_ADSOYAD,
                  "TelNo": GIRIS_TEL,
                  "EMail": GIRIS_EMAIL,
                  "Tarih": tarih,
                  "Saat": _value,
                }),
                db.child("RandevuSayac/Rsayac").update({
                  "sayac": sayac.toString(),
                }),
                Toast.show(
                    "RANDEVUNUZ BA??ARILI B??R ??EK??LDE ALINMI??TIR ...", context,
                    duration: 3, gravity: Toast.BOTTOM)
              }) //gurda bize meail g??nderildiyse bilgi veriyor
          .catchError(() => {
                Toast.show("L??TFEN MA??L ADRES??N??Z?? KONTROL ED??N??Z", context,
                    duration: 3, gravity: Toast.BOTTOM)
              }); //burdada g??nderilmedi??inde bilgi veriyor
    }
  }
}
