import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MisafirSSS extends StatefulWidget {
  @override
  _MisafirSSSState createState() => _MisafirSSSState();
}

class _MisafirSSSState extends State<MisafirSSS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "SIKÇA SORULAN SORULAR",
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
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                //dövme ve bakım
                new Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "dosyalar/img/bakimvekoruma.jpeg",
                        width: double.maxFinite,
                        height: 250,
                        fit: BoxFit.fill,
                      ),
                      ExpansionTile(
                        title: Text(
                          "DÖVME BAKIMI VE KORUMASI NASIL OLMALI ? ",
                          style: GoogleFonts.jura(
                            fontSize: 20,
                            color: Colors.orange,
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        children: <Widget>[
                          Text(
                            "İşlem öncesi dövme yapılacak bölge tüylüyse tüylerin alınıp temizlenmesi, derinin steril edilmesi gerekir. Dövme uygulaması bitiminde bölgeye tavsiye edilen anti-bakteriyel krem sürülür, ardından yıkanıldığında anti-bakteriyel sabunla uygulama yapılmalıdır. En az günde iki-üç kez kremlenmeli, her yıkanmada durulandıktan sonra anti-bakteriyel sabunla bölge ovalanıp temizlenmesi yapılmalıdır. Dövmenin üstü kapatılmamalı ve hava almalıdır. Buradaki mantık şudur; işlem dövme de olsa sonuçta deriye cerrahi bir müdahale uygulanmıştır. Yaradır. Tıp terimiyle lezyondur. Bu lezyonun, yaranın iyileşmesi bir süreç ister. Ama bu sürecin, boyanın derinin altında kalarak tamamlanması gerekmektedir. Yara kurursa lezyon kabuk bağlar. Bu kabuk kuru haliyle kalkarsa boyayla birlikte ayrılır deriden. Bu nedenle o bölgenin kuruyup boyayla birlikte atılmasını önlemek için, nemli kalması gereklidir. Bunu da antibiyotik, antiseptik, epitelizan muhtevalı bir kremle yapmak durumundayız. Bu işlem dövmenin daha sağlıklı görünmesini sağlar. Krem, enfeksiyon riskini sıfıra indirir, yaranın kabuğunu minimum düzeyde tutar ve renklerin ideal tonunu korur. Oluşan kabuk kesinlikle kopartılmamalıdır.  Her şey yolunda gitse dahi yine de birinci haftadan sonra dövmeciye uğranmalıdır. Gerekli görülür ise rötuş yapılır. Dikkat edilmesi gereken bir diğer husus da şehir sularımız yeterince temiz olmadığı için özellikle ilk 3 gün duş alırken dövmeli bölgeyi korumalıyız. Aynı şey havuz suları için de geçerlidir. Temiz olduğuna güvendiğiniz ılık suyla olma şartı ile duş alabilirsiniz. Son birkaç gün oluşacak olan kaşıntı çok normaldir. Bir parça buz bölgede rahatlamayı sağlar. Bu adımlardan sonra tek dikkat edilmesi gereken aşırı güneşten korunmaktır.",
                            style: GoogleFonts.jura(
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                                color: Colors.grey),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 10),
                ),
                //dövme tarz ve çekişleri
                new Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "dosyalar/img/dovmeTarziCesitleri.jpeg",
                        width: double.maxFinite,
                        height: 250,
                        fit: BoxFit.fill,
                      ),
                      ExpansionTile(
                        title: Text(
                          "KAÇ TANE DÖVME TARZI VARDIR?",
                          style: GoogleFonts.jura(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.orange),
                          textAlign: TextAlign.center,
                        ),
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                "11 tane dövme tarzı vardır.",
                                style: GoogleFonts.jura(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Geleneksel Dövme (Traditional Tattoo)",
                                style: GoogleFonts.jura(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Gerçekçi Dövme (Realistic Tattoo)",
                                style: GoogleFonts.jura(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Suluboya Dövme (Watercolor Tattoo)",
                                style: GoogleFonts.jura(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Kabile Dövmesi (Tribal Tattoo)",
                                style: GoogleFonts.jura(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Yenileşmiş Geleneksel Dövme (New School Tattoo)",
                                style: GoogleFonts.jura(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Neo-Geleneksel Dövme (Neo-Traditional Tattoo)",
                                style: GoogleFonts.jura(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Japon Tarzı Dövme (Japanese Tattoo)",
                                style: GoogleFonts.jura(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "İllüstratif Dövme (Illustrative Tattoo)",
                                style: GoogleFonts.jura(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Chicano Tarzı Dövme (Chicano Style Tattoo)",
                                style: GoogleFonts.jura(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Biyomekanik Dövme (Biomechanical Tattoo)",
                                style: GoogleFonts.jura(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Minimal Dövmeler (Minimaliz Tattoo):",
                                style: GoogleFonts.jura(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 10),
                ),
                // geleneksel dövme
                new Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "dosyalar/img/geleneksel.jpeg",
                        width: double.maxFinite,
                        height: 250,
                        fit: BoxFit.fill,
                      ),
                      ExpansionTile(
                        title: Text(
                          "GELENEKSEL DÖVME   (Traditional Tattoo) ",
                          style: GoogleFonts.jura(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.orange),
                          textAlign: TextAlign.center,
                        ),
                        children: <Widget>[
                          Text(
                            "Bir başka ismi de “Old School” olan bu dövme çeşidi bu konuda bilinen en eski ve en tanınmış tarzlardan biridir. Karakteristik olarak kalın siyah çizgiler ve sınırlı bir renk paletine sahiptir. Bu renkler genellikle parlaktır ve tasarımlarda bolca gül, çapa, kadın yüzleri bulunur.",
                            style: GoogleFonts.jura(
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 10),
                ),
                //yeni tip dövme
                new Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "dosyalar/img/yenilenmisDovme.jpeg",
                        width: double.maxFinite,
                        height: 250,
                        fit: BoxFit.fill,
                      ),
                      ExpansionTile(
                        title: Text(
                          "YENİLENMİŞ GELENEKSEL DÖVME                                          (New School Tattoo) ",
                          style: GoogleFonts.jura(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.orange,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        children: <Widget>[
                          Text(
                            "İsmi New School olmasına rağmen 80’lerin sonunda 90’ların başında ortaya çıkan bu dövme tarzı genelde renkli ve karikatürize edilmiş figürler barındırır. Genelde eğlenceli ve gayri ciddi tasarımlar kullanılır ve renkler çok canlı olabilir.",
                            style: GoogleFonts.jura(
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 10),
                ),
                //neo dovme
                new Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "dosyalar/img/neo.jpeg",
                        width: double.maxFinite,
                        height: 250,
                        fit: BoxFit.fill,
                      ),
                      ExpansionTile(
                        title: Text(
                          "NEO GELENEKSEL DÖVME",
                          style: GoogleFonts.jura(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.orange,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        children: <Widget>[
                          Text(
                            "Bu dövme çeşidi geleneksel dövmenin evrimleşmiş halidir. Geleneksel dövmenin belirgin hatlarını korurken daha canlı ve geniş bir renk kartelasına sahiptir. Ayrıca gölgelerin daha belirgin kullanıldığı bu tarzda gerçekçilik seviyesi biraz daha artırılmış olabilmektedir.",
                            style: GoogleFonts.jura(
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 10),
                ),

                //biyomekanik dövme
                new Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "dosyalar/img/biyoMekanik.jpeg",
                        width: double.maxFinite,
                        height: 250,
                        fit: BoxFit.fill,
                      ),
                      ExpansionTile(
                        title: Text(
                          "BIYOMEKANİK DÖVME (Biomechanical Tattoo)",
                          style: GoogleFonts.jura(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.orange,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        children: <Widget>[
                          Text(
                            "İnsan vücudunu ve sahip olduğu uzuvları mekanik bir parça gibi göstermeyi amaçlayan bu tarz genellikle kol ve bacaklara uygulanır. İnsan vücudunu bir makine veya bir robot gibi gösteren kesitler oluşturur.",
                            style: GoogleFonts.jura(
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 10),
                ),
                //chicano dövme
                new Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "dosyalar/img/c.jpeg",
                        width: double.maxFinite,
                        height: 250,
                        fit: BoxFit.fill,
                      ),
                      ExpansionTile(
                        title: Text(
                          "CHICANO TARZI DÖVME (Chicano Style Tattoo) ",
                          style: GoogleFonts.jura(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.orange,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        children: <Widget>[
                          Text(
                            "Chicano Meksika asıllı Amerikalılar için kullanılan bir tabirdir. Genellikle hapishanelerdeki kişiler tarafından tercih edilen bu dövme tarzı Meksika devrimi, Hristiyanlık ve özgürlüğe duyulan özlemi simgeleyen tasarımlara sahiptir. Genellikle siyah mürekkeple uygulanır ve renksizdir. Getto kültürünün izlerini taşıyan bu dövme tarzı uygulamadan ziyade konusuyla diğer dövme çeşitlerinden ayrışır.",
                            style: GoogleFonts.jura(
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 10),
                ),
                //illustratif dövme
                new Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "dosyalar/img/illustratif.jpeg",
                        width: double.maxFinite,
                        height: 250,
                        fit: BoxFit.fill,
                      ),
                      ExpansionTile(
                        title: Text(
                          "ILLUSTRATİF DÖVME (Illustrative Tattoo)  ",
                          style: GoogleFonts.jura(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.orange,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        children: <Widget>[
                          Text(
                            "Bu dövme çeşidi aslında diğer dövme çeşitleriyle bir kesişim kümesi oluşturur. Foto-gerçekçi dövmeler dışındaki birçok dövme zaten illüstratif dövmedir. Ne var ki bu dövme tarzının belli bir konusu ve motifi bulunmamakta. Renkli ve renksiz birçok dövmeyi isimlendirmek için kullanılabilecek genel bir adlandırmadır. Genelde ince çizgilerle çizilen objeler renklendirilerek oluşturulur. ",
                            style: GoogleFonts.jura(
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 10),
                ),
                //minimal dövme
                new Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "dosyalar/img/minimelDovme.jpeg",
                        width: double.maxFinite,
                        height: 250,
                        fit: BoxFit.fill,
                      ),
                      ExpansionTile(
                        title: Text(
                          "MİNİMAL DÖVME              (Minimaliz Tattoo) ",
                          style: GoogleFonts.jura(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.orange,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        children: <Widget>[
                          Text(
                            "Genellikle çok fazla dikkat çekmeden kendini ifade etmek isteyenlerin tercihidir.  Minimaliz dövmeler oldukça sadece ve genellikle renksizdir. Vücudun her yerinde çok küçük boyutlarda da bulunabilir. Sade ve geometrik semboller barındırabilir.",
                            style: GoogleFonts.jura(
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 10),
                ),
                //sulu dovme
                new Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "dosyalar/img/sulu.jpeg",
                        width: double.maxFinite,
                        height: 250,
                        fit: BoxFit.fill,
                      ),
                      ExpansionTile(
                        title: Text(
                          "SULUBOYA DÖVME           (Watercolor Tattoo)",
                          style: GoogleFonts.jura(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.orange),
                          textAlign: TextAlign.center,
                        ),
                        children: <Widget>[
                          Text(
                            "Son yıllarda popülaritesini git gide artıran suluboya dövmeler insan vücudunu bir tuval gibi kullanmayı gerektiriyor. Tuval üzerindeki hali kolay uygulanabiliyor gibi görünse de bu durum deri üzerine gelindiğinde epey bir zorlaşabiliyor. Dövme sanatçıları için görece uygulaması zor bir dövme çeşididir.",
                            style: GoogleFonts.jura(
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 10),
                ),
                //japon dovme
                new Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "dosyalar/img/japon.jpeg",
                        width: double.maxFinite,
                        height: 250,
                        fit: BoxFit.fill,
                      ),
                      ExpansionTile(
                        title: Text(
                          "JAPON TARZI DÖVME     (Japanese Tattoo)",
                          style: GoogleFonts.jura(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.orange,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        children: <Widget>[
                          Text(
                            "Uzakdoğu kültüründe görmeye alışık olduğumuz o bölgenin mitolojik öğelerinin sıkça barındıran bir dövme çeşididir. Ejderhalar, dövülmüş ve saldırıya uğramış kahramanlar, mitolojik yaratıklar ve bunlarla birlikte kan detayları bu tarzı biraz korkunç bir hale getirebilmektedir.",
                            style: GoogleFonts.jura(
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 10),
                ),
                //gercekci dovme
                new Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "dosyalar/img/gercekci.jpeg",
                        width: double.maxFinite,
                        height: 250,
                        fit: BoxFit.fill,
                      ),
                      ExpansionTile(
                        title: Text(
                          "REALİSTİK DÖVME         (Realistic Tattoo)",
                          style: GoogleFonts.jura(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.orange,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        children: <Widget>[
                          Text(
                            "Gerçekçi tasarımlardan hoşlananlar için en uygun dövme çeşitlerinin başında gelir. Çünkü dövme sanatçısı foto-gerçekçi bir tasarım yaratarak gördüğünü birebir aynı olacak şekilde deriye işler. Renkli ve sadece siyah olarak uygulanabilir. Sürreal detaylarla da farklı kompozisyonlar oluşturulabilir, burada objeler gerçektekiyle birebir aynıdır fakat; kompozisyonlar ve konumlamalar dünyada gözle görülemeyecek şekilde de gerçekleştirilebilir.",
                            style: GoogleFonts.jura(
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 10),
                ),

                //dövme fiyanlandırma
                new Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "dosyalar/img/dovmeFiyatlandirma.jpg",
                        width: double.maxFinite,
                        height: 250,
                        fit: BoxFit.fill,
                      ),
                      ExpansionTile(
                        title: Text(
                          "GENEL DÖVME FİYATLANDIRMA",
                          style: GoogleFonts.jura(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.orange,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        children: <Widget>[
                          Text(
                            "Dövme yaptırmaya karar verdiyseniz merak ettiğiniz şeylerden biri de dövmenizin kaç lira tutacağıdır. Basit bir matematik ile size yaklaşık dövme fiyatı hesaplama sonuca ulaşabilirsiniz. Fakat şunu göz önünde bulundurmanız gerekmektedir. Her sanatçının çalışmaya işlediği çizgiler aynı olmadığı gibi fiyatlama kısmı da aynı olmayacaktır. Unutmamalısınız ki bu hesaplama şekli sizin duygularınızı anlayamaz, yapılacak objenin sizin istediğiniz boyutta yapılıp yapılamayacağını bilemez, objenin istediğiniz boyutta size yakışıp yakışmayacağını, yapımının ne kadar süreceğini ne kadar işçilikli-zor olduğunu ya da ne kadar kolay olacağından dolayı ne kadar indirim yapılması gerektiğini bilemez. Hesaplama sonucu çıkan değer, sadece matematiksel bir fikir kazanmanıza yarar. Buradan çıkacak sonuç ile gerçek dövme fiyatı arasında artı-eksi %30 fark olabilir. Kısacası dövmeniz için en iyi fiyatı almanın; dövmeciniz ile yüz yüze konuşmak olduğunu unutmayın. Gerekirse size bir telefon kadar yakınız. Size yardımcı olmaktan mutluluk duyarız. Yaptıracağınız dövmenin: ENİ x BOYU x 10",
                            style: GoogleFonts.jura(
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 10),
                ),

                //cover up nedir
                new Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "dosyalar/img/coverUp.jpeg",
                        width: double.maxFinite,
                        height: 250,
                        fit: BoxFit.fill,
                      ),
                      ExpansionTile(
                        title: Text(
                          "COVER UP                           (DÖVME KAPATMA)",
                          style: GoogleFonts.jura(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.orange,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        children: <Widget>[
                          Text(
                            "Cover up Dövme Eskiyen, rengi solan ya da kötü yapılmış olan dövmelerin yeni bir dövme ile kapatılması işlemi cover up (dövme kapatma) olarak anlamlandırılır. Beğenilmeyen ya da kötü yapılmış dövmeler, daha kaliteli dövme tasarımları ile kapatılır. ",
                            style: GoogleFonts.jura(
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 10),
                ),
              ],
            ),
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
          initialActiveIndex: 3, //optional, default as 0
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
