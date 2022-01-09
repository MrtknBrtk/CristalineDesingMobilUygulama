import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imagebutton/imagebutton.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class MisafirIletisim extends StatefulWidget {
  @override
  _MisafirIletisimState createState() => _MisafirIletisimState();
}

class _MisafirIletisimState extends State<MisafirIletisim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "İLETİŞİM BİLGİLERİMİZ",
            style: GoogleFonts.jura(
              fontSize: 23,
              fontWeight: FontWeight.w900,
              color: Colors.orange,
            ),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: Container(
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              Text(
                "DÜKKAN KONUMU",
                style: GoogleFonts.jura(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: Colors.purpleAccent,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 5)),
              ImageButton(
                children: <Widget>[],
                width: double.maxFinite,
                height: 300,
                pressedImage: Image.asset(
                  "dosyalar/img/konum.jpeg",
                ),
                unpressedImage: Image.asset("dosyalar/img/konum.jpeg"),
                onTap: () {
                  _hesabaGit(
                      "https://www.google.com.tr/maps/place/Ke%C5%9Fan+Yusuf+%C3%87apraz+Uygulamal%C4%B1+Bilimler+Y%C3%BCksekokulu/@40.833707,26.6575573,17z/data=!3m1!4b1!4m5!3m4!1s0x14b3c6f4ca782a7f:0x3bd91fec6442c98a!8m2!3d40.833707!4d26.659746");
                },
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Text(
                "AÇIK ADRES",
                style: GoogleFonts.jura(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: Colors.purpleAccent),
              ),
              Row(
                children: <Widget>[
                  new Container(
                    child: Image.asset(
                      "dosyalar/img/home.png",
                      width: 64,
                      height: 64,
                    ),
                  ),
                  new Container(
                    margin: EdgeInsets.only(top: 5),
                    width: 280,
                    child: Text(
                      "Trakya Üniversitesi Keşan Yusuf Çapraz Uygulamalı Bilimler Yüksekokulu P.K., B/50, 22800 Keşan/Edirne",
                      style: GoogleFonts.jura(
                          color: Colors.orange,
                          fontSize: 13,
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.normal),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Text("MAİL ADRSİMİZ",
                  style: GoogleFonts.jura(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Colors.purpleAccent)),
              Row(children: <Widget>[
                new Container(
                  child: Image.asset(
                    "dosyalar/img/mail.png",
                    width: 64,
                    height: 64,
                  ),
                ),
                new Container(
                  width: 230,
                  child: Text(
                    "crystalline_desing@outlook.com",
                    style: GoogleFonts.jura(
                        fontSize: 13,
                        fontWeight: FontWeight.w900,
                        color: Colors.orange),
                    textAlign: TextAlign.left,
                  ),
                ),
              ]),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              Text(
                "WHATSAPP İLETİŞİM NUMARAMIZ",
                style: GoogleFonts.jura(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: Colors.purpleAccent),
                textAlign: TextAlign.center,
              ),
              Row(children: <Widget>[
                new Container(
                  child: Image.asset(
                    "dosyalar/img/tel.png",
                    width: 64,
                    height: 64,
                  ),
                ),
                InkWell(
                  onTap: () {
                    _launchWhatsApp();
                  }, // Handle your callback
                  child: Text(
                    "0542 566 60 48",
                    style: GoogleFonts.jura(
                        fontSize: 13,
                        fontWeight: FontWeight.w900,
                        color: Colors.orange),
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              Text(
                "SOSYAL MEDYA HESAPLARIMIZ",
                style: GoogleFonts.jura(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: Colors.purpleAccent),
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ImageButton(
                    children: <Widget>[],
                    width: 60,
                    height: 60,
                    pressedImage: Image.asset(
                      "dosyalar/img/fc.png",
                    ),
                    unpressedImage: Image.asset("dosyalar/img/fc.png"),
                    onTap: () {
                      _hesabaGit(
                          "https://www.facebook.com/Crystalline-Design-107705751141772");
                    },
                  ),
                  ImageButton(
                    children: <Widget>[],
                    width: 60,
                    height: 60,
                    pressedImage: Image.asset(
                      "dosyalar/img/ins.png",
                    ),
                    unpressedImage: Image.asset("dosyalar/img/ins.png"),
                    onTap: () {
                      _hesabaGit(
                          "https://www.instagram.com/crystalline.design/?hl=tr");
                    },
                  ),
                  ImageButton(
                    children: <Widget>[],
                    width: 60,
                    height: 60,
                    pressedImage: Image.asset(
                      "dosyalar/img/twt.png",
                    ),
                    unpressedImage: Image.asset("dosyalar/img/twt.png"),
                    onTap: () {
                      _hesabaGit("https://twitter.com/crystalline_des");
                    },
                  ),
                  ImageButton(
                    children: <Widget>[],
                    width: 60,
                    height: 60,
                    pressedImage: Image.asset(
                      "dosyalar/img/lnk.png",
                    ),
                    unpressedImage: Image.asset("dosyalar/img/lnk.png"),
                    onTap: () {
                      _hesabaGit(
                          "https://www.linkedin.com/company/71868645/admin/");
                    },
                  ),
                ],
              ),
              new Container(
                margin: EdgeInsets.only(bottom: 30),
              )
            ]),
          ),
        ),
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
          initialActiveIndex: 2, //optional, default as 0
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
}

Future _hesabaGit(String link) async {
  if (await canLaunch(link)) {
    await launch(link);
  } else {
    debugPrint("hatalı link");
  }
}

Future _launchWhatsApp() async {
  final link = WhatsAppUnilink(
    phoneNumber: '+090-(542)5666048',
    text: "Merak ettikleriniz için  çekinmeden sarabilirsin.. ",
  );

  await launch('$link');
}
