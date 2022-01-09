import 'dart:math';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:tatto/kayitDogrulamaAlma.dart';
import 'package:toast/toast.dart';
import 'package:mailer2/mailer.dart';

import 'arayuz/kayitliKullaniciSayfalari/crediantial.dart';

class KayitSayfasi extends StatefulWidget {
  @override
  Icerik createState() => Icerik();
}

class Icerik extends State<KayitSayfasi> {
  String kisim, kullaniciAdim, ksifre, kTsifre, kemail, ktel, adi, nick;
  int rastgeleSayi;
  ad(isim) {
    this.kisim = isim;
  }

  kullaniciAdimAl(kAdi) {
    this.kullaniciAdim = kAdi;
  }

  sifreAl(sifre) {
    this.ksifre = sifre;
  }

  ikiciSifre(tSifre) {
    this.kTsifre = tSifre;
  }

  mealAl(email) {
    this.kemail = email;
  }

  telAl(tel) {
    this.ktel = tel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HOŞGELDİNİZ",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
          child: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("dosyalar/img/kayitbg.jpeg"),
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              new Container(
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(10.0, 30, 10.0, 20.0),
                  child: TextField(
                    onChanged: (String isim) {
                      setState(() {
                        ad(isim);
                      });
                    },
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'ADINIZ   ve    SOYADINIZ',
                    ),
                  )),

              new Container(
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(10.0, 0, 10.0, 20.0),
                  child: TextField(
                    onChanged: (String kAdi) {
                      setState(() {
                        kullaniciAdimAl(kAdi);
                      });
                    },
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'KULLANICI ADI',
                    ),
                  )),
              new Container(
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(10.0, 0, 10.0, 20.0),
                  child: TextField(
                    onChanged: (String sifre) {
                      setState(() {
                        sifreAl(sifre);
                      });
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'ŞİFRE',
                    ),
                  )),
              new Container(
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(10.0, 0, 10.0, 20.0),
                  child: TextField(
                    onChanged: (String tSifre) {
                      setState(() {
                        ikiciSifre(tSifre);
                      });
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'ŞİFRE TEKRAR',
                    ),
                  )),
              new Container(
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(10.0, 0, 10.0, 20.0),
                  child: TextField(
                    onChanged: (String email) {
                      setState(() {
                        mealAl(email);
                      });
                    },
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'MAİL ADRESİ',
                    ),
                  )),
              new Container(
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(10.0, 0, 10.0, 20.0),
                  child: TextField(
                    onChanged: (String tel) {
                      setState(() {
                        telAl(tel);
                      });
                    },
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'TELEFON NUMARASI',
                    ),
                  )),

              //kayit ol buttonu
              new Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 25),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                      child: const Text(
                        'KAYIT OL',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      padding: EdgeInsets.fromLTRB(145, 20, 145, 20),
                      color: Colors.black,
                      elevation: 2.0,
                      splashColor: Colors.grey,
                      onPressed: () => {veriEkle()})),
            ],
          ),
        ),
      )),
    );
  }

  sayiuret() {
    int min = 100000;
    int max = 999999;
    var randomizer = new Random();
    rastgeleSayi = min + randomizer.nextInt(max - min);
    print(rastgeleSayi);
  }

  //firebase e veri kullanici ekleme
  veriEkle() async {
    sayiuret();
    final db = FirebaseDatabase.instance.reference();
    db
        .child("Kullaniciler/" + kullaniciAdim + "/Nick")
        .once()
        .then((DataSnapshot snapshot) {
      nick = '${snapshot.value}';
      if (kisim == "" ||
          kullaniciAdim == "" ||
          ksifre == "" ||
          kTsifre == "" ||
          kemail == "" ||
          ktel == "" ||
          kisim == null ||
          kullaniciAdim == null ||
          ksifre == null ||
          kTsifre == null ||
          kemail == null ||
          ktel == null) {
        Toast.show(
          "BOŞ ALAN BULUNMAKTADIR LÜTFEN DOLDURUNUZ",
          context,
          duration: 3,
          gravity: Toast.BOTTOM,
        );
      } else {
        if (kullaniciAdim == nick) {
          Toast.show("BU KULLANİCİ ADI DAHA ÖNCE ALINMIŞTIR", context,
              duration: 3, gravity: Toast.BOTTOM);
        } else {
          if (ksifre == kTsifre) {
            //burda meil gönderme yapılmıştır
            var options = new GmailSmtpOptions()
              ..username = EMAIL
              ..password = PASS;

            var emailTransport = new SmtpTransport(options);

            // Create our mail/envelope.
            var envelope = new Envelope()
              ..recipients.add(kemail) //alici  gmail i
              ..subject = 'Crystalline Design Hesap Dogrulama'
              ..text = 'Crystalline Design Hesap Dogrulama'
              ..html =
                  '<h1>DOGRULAMA KODUNUZ</h1><p>"${rastgeleSayi.toString()}"</p>'; //burda mesaj içeriği var

            // Email it.
            emailTransport
                .send(envelope)
                .then((envelope) => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => KayitDogrulamaAlma(
                            kayitGelenKadi: kullaniciAdim,
                            kayitGelenAdSoyad: kisim,
                            kayitGelenMail: kemail,
                            kayitGelenTel: ktel,
                            kayitGelenSifre: ksifre,
                            kayitGelenKod: rastgeleSayi.toString(),
                          ),
                        ),
                      )
                    }) //gurda bize meail gönderildiyse bilgi veriyor
                // ignore: return_of_invalid_type_from_catch_error
                .catchError(() => {
                      Toast.show(
                          "LÜTFEN MAİL ADRESİNİZİ KONTROL EDİNİZ", context,
                          duration: 3, gravity: Toast.BOTTOM)
                    }); //burdada gönderilmediğinde bilgi veriyor

          } else {
            Toast.show("ŞİFRELER UYUŞMAMAKTADIR TEKRAR DENEYİNİZ", context,
                duration: 3, gravity: Toast.BOTTOM);
          }
        }
      }
    });
  }
}
