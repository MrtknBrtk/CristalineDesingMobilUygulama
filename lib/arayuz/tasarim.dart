import 'dart:io';
import 'dart:ui';

/// Flutter code sample for InteractiveViewer

// This example shows a simple Container that can be panned and zoomed.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:screenshot/screenshot.dart';

void main() => runApp(Tasarim());

/// This is the main application widget.
class Tasarim extends StatelessWidget {
  static String _title = 'CESARETİNİ YANSIT';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            _title,
            style: GoogleFonts.jura(
                fontWeight: FontWeight.w900, color: Colors.orange),
          ),
          backgroundColor: Colors.black,
        ),
        body: MyStatelessWidget(),
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
                onTap: () {
                  Navigator.pushNamed(context, "/tasarim");
                },
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
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatefulWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  _MyStatelessWidgetState createState() => _MyStatelessWidgetState();
}

File resim;

class _MyStatelessWidgetState extends State<MyStatelessWidget> {
  //Create an instance of ScreenshotController
  ScreenshotController screenshotController = ScreenshotController();
  String resimDegis = "dosyalar/img/logoturuncu.png";

  String resimyolu;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
              width: double.maxFinite,
              height: 600,
              child: Row(
                children: <Widget>[
                  Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          for (int i = 1; i < 20; i++)
                            Container(
                              width: 50,
                              height: 50,
                              margin: EdgeInsets.all(5),
                              child: IconButton(
                                  icon: Image.asset(
                                      "dosyalar/bos/" + i.toString() + ".png"),
                                  onPressed: () {
                                    setState(() {
                                      resimDegis = "dosyalar/bos/" +
                                          i.toString() +
                                          ".png";
                                    });
                                  }),
                            ),
                        ],
                      ),
                    ),
                    width: 60,
                    height: double.maxFinite,
                    color: Colors.grey[300],
                  ),
                  Container(
                    width: 300,
                    height: double.maxFinite,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        //degisti
                        image: AssetImage(resimyolu == null
                            ? "dosyalar/img/beyaz.png"
                            : resimyolu),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: InteractiveViewer(
                      boundaryMargin: EdgeInsets.all(10000.0),
                      minScale: 0.1,
                      maxScale: 10.0,
                      child: Container(
                        child: Image.asset(
                          resimDegis,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          Container(
            width: double.maxFinite,
            height: 50,
            child: Center(
                child: Container(
                    width: 392.5,
                    height: 50,
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                        child: Text(
                          'FOTO ÇEK',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.jura(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.orange,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        color: Colors.black,
                        elevation: 2.0,
                        splashColor: Colors.white,
                        onPressed: () {
                          resimAl();
                        }))),
          ),
        ],
      ),
    ));
  }

  Future resimAl() async {
    // ignore: deprecated_member_use
    var secilenResim = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      resim = secilenResim;
      resimyolu = secilenResim.path;
    });
  }
}
