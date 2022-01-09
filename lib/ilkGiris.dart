import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IlkGiris extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                //degisti
                image: AssetImage("dosyalar/img/logo80.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.only(top: 325),
                    ),
                    new Container(
                      //degisti

                      child: Image.asset(
                        "dosyalar/img/crystallineyazirudo.png",
                      ),
                    ),
                    new Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.fromLTRB(0, 40, 0, 20),
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          //eklendi
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          //degisti
                          child: Text(
                            'KULLANICI GİRİŞİ',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.jura(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          padding: EdgeInsets.fromLTRB(90, 20, 90, 20),
                          color: Color.fromRGBO(230, 126, 34, 1.0),
                          elevation: 2.0,
                          splashColor: Colors.white,
                          onPressed: () =>
                              Navigator.pushNamed(context, "/kayitliKullanici"),
                        )),
                    new Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: Text(
                            'MİSAFİR GİRİŞİ',
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
                          onPressed: () =>
                              Navigator.pushNamed(context, "/misafirGirisi"),
                        )),
                    new Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: Text(
                            'KAYIT OL',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.jura(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          padding: EdgeInsets.fromLTRB(122, 20, 140, 20),
                          color: Color.fromRGBO(230, 126, 34, 1.0),
                          elevation: 2.0,
                          splashColor: Colors.white,
                          onPressed: () =>
                              Navigator.pushNamed(context, "/kayitSayfasi"),
                        ))
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
