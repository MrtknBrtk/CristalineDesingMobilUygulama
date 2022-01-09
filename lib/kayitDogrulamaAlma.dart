import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class KayitDogrulamaAlma extends StatefulWidget {
  final String kayitGelenAdSoyad,
      kayitGelenKadi,
      kayitGelenSifre,
      kayitGelenTel,
      kayitGelenMail,
      kayitGelenKod;
  const KayitDogrulamaAlma(
      {Key key,
      this.kayitGelenAdSoyad,
      this.kayitGelenKadi,
      this.kayitGelenSifre,
      this.kayitGelenTel,
      this.kayitGelenMail,
      this.kayitGelenKod})
      : super(key: key);

  @override
  _KayitDogrulamaAlmaState createState() => _KayitDogrulamaAlmaState();
}

String kodAl;

class _KayitDogrulamaAlmaState extends State<KayitDogrulamaAlma> {
  kodal(kod) {
    setState(() {
      kodAl = kod;
    });
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
                  margin: EdgeInsets.fromLTRB(10.0, 0, 10.0, 20.0),
                  child: TextField(
                    onChanged: (String kod) {
                      setState(() {
                        kodal(kod);
                      });
                    },
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Dogrulama kodunu giriniz',
                    ),
                  )),

              //kayit ol buttonu
              new Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 25),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                      child: const Text(
                        'KAYDI TAMAMLA',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      padding: EdgeInsets.fromLTRB(145, 20, 145, 20),
                      color: Colors.black,
                      elevation: 2.0,
                      splashColor: Colors.grey,
                      onPressed: () => {kayityap()})),
            ],
          ),
        ),
      )),
    );
  }

  Future kayityap() async {
    print(kodAl);
    print("${widget.kayitGelenKod}");
    if (kodAl == "${widget.kayitGelenKod}") {
      final db = FirebaseDatabase.instance.reference();
      db.child("Kullaniciler/" + "${widget.kayitGelenKadi}").set({
        "Ad": "${widget.kayitGelenAdSoyad}",
        "Nick": "${widget.kayitGelenKadi}",
        "Posta": "${widget.kayitGelenMail}",
        "Tel": "${widget.kayitGelenTel}",
        "Sifre": "${widget.kayitGelenSifre}",
      });
      Navigator.pushNamed(context, "/kayitliKullanici");
    } else {
      Toast.show("KODUNUZU TEKRAR DENEYİNİZ", context,
          duration: 3, gravity: Toast.BOTTOM);
    }
  }
}
