import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GeriBildirim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CRYSTALLINE DESIGN"),
        backgroundColor: Color.alphaBlend(Colors.black, Colors.black),
      ),
      body: Center(
        child: Text("sikayet SAYFASI"),
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
}
