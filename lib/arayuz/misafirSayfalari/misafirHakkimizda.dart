import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MisafirHakkimizda extends StatefulWidget {
  @override
  _MisafirHakkimizdaState createState() => _MisafirHakkimizdaState();
}

class _MisafirHakkimizdaState extends State<MisafirHakkimizda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "HAKKIMIZDA",
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
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    color: Colors.orange,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        ExpansionTile(
                          title: Text(
                            "BİZ KİMİZ ?",
                            style: GoogleFonts.jura(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          children: <Widget>[
                            Text(
                              "Türkiye’nin en yetenekli dövme sanatçılarından oluşan çekirdek kadromuzla steril bir ortamda, dünya standartlarında kaliteli dövme ekipmanlarımızla Crystalline Design Dövme & Piercing stüdyomuz 2020 yılında Edirne ilinin Keşan ilçesinde hizmetinize açılmıştır. Çeşitli Piercing modellerimiz ve vücudunuzdaki her bölge için uygun ekipmanlarımızla Piercing sahibi olmaktan korkmayın. Kendimize ait olan dövme modelleri kataloğumuzla orijinal tasarımlarımızı keşfedin. İsteğe özel tasarım yapan harika çizerlerimizle cesaretinizi vücudunuza yansıtın...",
                              style: GoogleFonts.jura(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black),
                            ),
                          ],
                        )
                      ],
                    ),
                    margin: EdgeInsets.only(bottom: 10),
                  ),
                  new Container(
                    color: Colors.orange,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        ExpansionTile(
                          title: Text(
                            "PROFESYONEL KADROMUZ VE STÜDYOMUZ",
                            style: GoogleFonts.jura(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          children: <Widget>[
                            Text(
                              "Alanında uzman kadromuz ile vücudunuzdaki her bölge için steril ve uygun ekipmanlarımızla acısız piercing sahibi olabilirsiniz. Dövme ve Piercing alanlarında modern çağın tüm kolaylıkları ile sizi rahat ettirecek şekilde tasarlanmış, sanat ve ilhamla dolu temiz ve hijyenik bir ortamda faaliyet göstermekteyiz. Dövmelerimiz genelde birçok seansı ve birkaç saati gerektirebilir ve sizi rahat ağırlamayı her zaman önemsiyoruz.",
                              style: GoogleFonts.jura(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black),
                            ),
                          ],
                        )
                      ],
                    ),
                    margin: EdgeInsets.only(bottom: 10),
                  ),
                  new Container(
                    color: Colors.orange,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        ExpansionTile(
                          title: Text(
                            "STERİLİZASYON",
                            style: GoogleFonts.jura(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          children: <Widget>[
                            Text(
                              "Dövme ve piercing uygulamasında en önemli konu kesinlikle hijyendir. Her durumda olduğu gibi insan bedenini doğrudan ilgilendiren işlemlerde steril olmak her zaman önemlidir. Bu noktada dikkat edilmesi gereken unsurlar ise; iğnenin birden çok kullanılmaması, makine uçlarının her kullanımdan sonra steril edilmesi, kullanılmış boya kaplarının bir kez daha kullanılmamasıdır. Yaptırdığınız dövme veya piercing için sanatçılarımız tarafından size söylenen bakımlara harfiyen uymalısınız. Aklınızda bir soru işareti kalmaması için bizimle iletişime geçebilirsiniz. Siz nereye giderseniz gidin, beraberinde gelecek uzun ömürlü bir sanat ve müthiş bir hizmet sağlamaktan gurur duyacağız.",
                              style: GoogleFonts.jura(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black),
                            ),
                          ],
                        )
                      ],
                    ),
                    margin: EdgeInsets.only(bottom: 10),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Container(
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "dosyalar/img/betul.jpg",
                                fit: BoxFit.fill,
                                width: 150,
                                height: 150,
                              ),
                              Text(
                                "BETÜL DERVİŞOĞLU",
                                style: GoogleFonts.jura(
                                  color: Colors.orange,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                "Sosyal Medya Uzmanı",
                                style: GoogleFonts.jura(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.orange,
                                    fontStyle: FontStyle.italic),
                              )
                            ],
                          ),
                          margin: EdgeInsets.only(right: 20, bottom: 20),
                        ),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Container(
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "dosyalar/img/mert.jpeg",
                                width: 150,
                                height: 150,
                              ),
                              Text(
                                "MERTKAN BİRTEK",
                                style: GoogleFonts.jura(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15),
                              ),
                              Text(
                                "Tatoo Desinger",
                                style: GoogleFonts.jura(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.orange,
                                    fontStyle: FontStyle.italic),
                              )
                            ],
                          ),
                          margin: EdgeInsets.only(right: 20, bottom: 20),
                        ),
                        new Container(
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "dosyalar/img/irem.jpeg",
                                fit: BoxFit.fill,
                                width: 150,
                                height: 150,
                              ),
                              Text(
                                "ÜLKÜ İREM AKGÜNEŞ",
                                style: GoogleFonts.jura(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15),
                              ),
                              Text(
                                "Designer",
                                style: GoogleFonts.jura(
                                    color: Colors.orange,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w900),
                              )
                            ],
                          ),
                          margin: EdgeInsets.only(bottom: 20),
                        ),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Container(
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "dosyalar/img/mert.jpeg",
                                width: 150,
                                height: 150,
                              ),
                              Text(
                                "BEDİRHAN BULU",
                                style: GoogleFonts.jura(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.w900,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 15),
                              ),
                              Text(
                                "Ekip Lideri",
                                style: GoogleFonts.jura(
                                    color: Colors.orange,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w900),
                              )
                            ],
                          ),
                          margin: EdgeInsets.only(right: 20, bottom: 20),
                        ),
                        new Container(
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "dosyalar/img/omer.jpeg",
                                fit: BoxFit.fill,
                                width: 150,
                                height: 150,
                              ),
                              Text(
                                "ÖMER DURAN ŞİRİN",
                                style: GoogleFonts.jura(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal),
                              ),
                              Text(
                                "Piercing Üstadı",
                                style: GoogleFonts.jura(
                                    color: Colors.orange,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w900),
                              )
                            ],
                          ),
                          margin: EdgeInsets.only(bottom: 20),
                        ),
                      ]),
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
          initialActiveIndex: 0, //optional, default as 0
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
