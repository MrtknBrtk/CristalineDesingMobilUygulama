import 'package:flutter/material.dart';

import 'package:tatto/ilkGiris.dart';
import 'arayuz/misafirSayfalari/misafirGirisi.dart';
import 'kayitliKullanici.dart';
import 'arayuz/kayitliKullaniciSayfalari/adminAnaSayfa.dart';
import 'arayuz/kayitliKullaniciSayfalari/dovmeSayfalari/Dovme.dart';
import 'arayuz/kayitliKullaniciSayfalari/hesapAyarlari/hesapAyarlari.dart';
import 'kayitSayfasi.dart';
import 'arayuz/kayitliKullaniciSayfalari/randevuAl.dart';
import 'arayuz/kayitliKullaniciSayfalari/coverUp.dart';
import 'arayuz/kayitliKullaniciSayfalari/hakkimizda.dart';
import 'arayuz/kayitliKullaniciSayfalari/iletisim.dart';
import 'arayuz/kayitliKullaniciSayfalari/sss.dart';
import 'arayuz/misafirSayfalari/misafirIletisim.dart';
import 'arayuz/misafirSayfalari/misafirSSS.dart';
import 'arayuz/misafirSayfalari/misafirHakkimizda.dart';
import 'arayuz/kayitliKullaniciSayfalari/pirsingSayfalari/pirsing.dart';
import 'arayuz/kayitliKullaniciSayfalari/hesapAyarlari/Dogrulama.dart';
import 'arayuz/kayitliKullaniciSayfalari/Oneriler.dart';
import 'kayitDogrulamaAlma.dart';
import 'arayuz/tasarim.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => IlkGiris(), //context uygulamanın merkezi
        "/misafirGirisi": (context) => MisafirGirisi(),
        "/kayitliKullanici": (context) => KayitliKullanici(),
        "/adminAnaSayfa": (context) => AdminAnaSayfa(),
        "/Dovme": (context) => KaliciDovme(),
        "/kayitSayfasi": (context) => KayitSayfasi(),
        "/pirsing": (context) => PirsingSayfasi(),
        "/coverUp": (context) => CoverUp(),
        "/hakkimizda": (context) => Hakkimizda(),
        "/iletisim": (context) => Iletisim(),
        "/sss": (context) => Sss(),
        "/misafirIletisim": (context) => MisafirIletisim(),
        "/misafirSSS": (context) => MisafirSSS(),
        "/misafirHakkimizda": (context) => MisafirHakkimizda(),
        "/randevuAl": (context) => RandevuSayfasi(),
        "/hesapAyarlari": (context) => HesapAyarlari(),
        "/Dogrulama": (context) => Dogrula(),
        "/Oneriler": (context) => Oneleriler(),
        "/kayitDogrulamaAlma": (context) => KayitDogrulamaAlma(),
        "/tasarim": (context) => Tasarim(),
      },
    ),
  );
}
