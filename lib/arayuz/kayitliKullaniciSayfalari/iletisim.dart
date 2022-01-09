import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imagebutton/imagebutton.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class Iletisim extends StatefulWidget {
  @override
  _IletisimState createState() => _IletisimState();
}

class _IletisimState extends State<Iletisim> {
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
        ),
        backgroundColor: Color.alphaBlend(Colors.black, Colors.black),
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
            Padding(padding: EdgeInsets.only(top: 20)),
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
            Text("MAİL ADRESİMİZ",
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
    text: "Merak ettikleriniz için  çekinmeden sorabilirsiniz.. ",
  );

  await launch('$link');
}
