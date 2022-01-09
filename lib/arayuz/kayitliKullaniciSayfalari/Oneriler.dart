import 'dart:async';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mailer/flutter_mailer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
//import 'package:tatto/kayitliKullanici.dart';
import 'package:tatto/arayuz/kayitliKullaniciSayfalari/crediantial.dart';

void main() => runApp(Oneleriler());

class Oneleriler extends StatefulWidget {
  @override
  _OnelerilerState createState() => _OnelerilerState();
}

class _OnelerilerState extends State<Oneleriler> {
  bool useTempDirectory = true;
  List<String> attachment = <String>[];
  final TextEditingController _subjectController =
      TextEditingController(text: '');
  final TextEditingController _bodyController =
      TextEditingController(text: '''  
  ''');
  final GlobalKey<ScaffoldState> _scafoldKey = GlobalKey<ScaffoldState>();
  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> send() async {
    if (Platform.isIOS) {
      final bool canSend = await FlutterMailer.canSendMail();
      if (!canSend) {
        const SnackBar snackbar =
            const SnackBar(content: Text('no Email App Available'));
        // ignore: deprecated_member_use
        _scafoldKey.currentState.showSnackBar(snackbar);
        return;
      }
    }

    // Platform messages may fail, so we use a try/catch PlatformException.
    final MailOptions mailOptions = MailOptions(
      body: _bodyController.text,
      subject: _subjectController.text,
      recipients: <String>[EMAIL], //postayı alan kişi yani şirket
      isHTML: true,
      //bccRecipients: <String>[GIRIS_EMAIL], //gonderen hesap yani müsteri
      attachments: attachment,
    );

    String platformResponse;

    try {
      final MailerResponse response = await FlutterMailer.send(mailOptions);
      switch (response) {
        case MailerResponse.saved:
          platformResponse = 'mail was saved to draft';
          break;
        case MailerResponse.sent:
          platformResponse = 'mail was sent';
          break;
        case MailerResponse.cancelled:
          platformResponse = 'mail was cancelled';
          break;
        case MailerResponse.android:
          platformResponse = 'intent was success';
          break;
        default:
          platformResponse = 'unknown';
          break;
      }
    } on PlatformException catch (error) {
      platformResponse = error.toString();
      print(error);
      if (!mounted) {
        return;
      }
      await showDialog<void>(
        context: _scafoldKey.currentContext,
        builder: (BuildContext context) => AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Message',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(error.message),
            ],
          ),
          contentPadding: const EdgeInsets.all(26),
          title: Text(error.code),
        ),
      );
    } catch (error) {
      platformResponse = error.toString();
    }

    if (!mounted) {
      return;
    }
    // ignore: deprecated_member_use
    _scafoldKey.currentState.showSnackBar(SnackBar(
      content: Text(platformResponse),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final Widget imagePath = GridView.count(
      primary: false,
      scrollDirection: Axis.vertical,
      crossAxisSpacing: 6,
      mainAxisSpacing: 6,
      crossAxisCount: 2,
      shrinkWrap: true,
      children: List<Widget>.generate(
        attachment.length,
        (int index) {
          final File file = File(attachment[index]);
          return GridTile(
            key: Key(attachment[index]),
            footer: GridTileBar(
              title: Text(
                file.path.split('/')?.last,
                textAlign: TextAlign.justify,
              ),
            ),
            child: Stack(
              fit: StackFit.passthrough,
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).accentColor,
                      ),
                      child: Image.file(
                        File(attachment[index]),
                        fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) => Icon(
                          Icons.attachment,
                          size: 50,
                          color: Theme.of(context).primaryIconTheme.color,
                        ),
                      ),
                    )),
                Align(
                  alignment: Alignment.topRight,
                  child: Material(
                    borderRadius: BorderRadius.circular(59),
                    type: MaterialType.transparency,
                    child: IconButton(
                      tooltip: 'remove',
                      onPressed: () {
                        setState(() {
                          attachment.removeAt(index);
                        });
                      },
                      padding: const EdgeInsets.all(10),
                      visualDensity: VisualDensity.compact,
                      icon: Icon(
                        Icons.clear,
                        color: Theme.of(context).primaryIconTheme.color,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );

    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black),
      home: Scaffold(
        key: _scafoldKey,
        appBar: AppBar(
          title: Text(
            'DESTEK',
            style: GoogleFonts.jura(
              color: Colors.orange,
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: send,
              icon: const Icon(Icons.send),
              color: Colors.orange,
            )
          ],
        ),
        body: Container(
          color: Colors.grey[350],
          height: double.maxFinite,
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.orange,
                          focusColor: Colors.orange,
                          hoverColor: Colors.orange,
                          border: OutlineInputBorder(),
                          labelText: 'KONU BAŞLIĞI',
                          labelStyle: GoogleFonts.jura(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: _bodyController,
                        maxLines: 10,
                        decoration: InputDecoration(
                          labelText: 'BİZİMLE İLETİŞİME GEÇİN',
                          labelStyle: GoogleFonts.jura(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.black),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    imagePath,
                  ],
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          icon: const Icon(Icons.camera),
          label: Text(
            'GÖRSEL EKLEYİN',
            style: GoogleFonts.jura(
              color: Colors.orange,
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
          backgroundColor: Colors.black,
          onPressed: _picker,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
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
      ),
    );
  }

  void _picker() async {
    final PickedFile pick =
        await ImagePicker().getImage(source: ImageSource.camera);
    setState(() {
      attachment.add(pick.path);
    });
  }

  Future<String> get _tempPath async {
    final Directory directory = await getTemporaryDirectory();

    return directory.path;
  }

  Future<String> get _localAppPath async {
    final Directory directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> _localFile(String fileName) async {
    final String path = await (useTempDirectory ? _tempPath : _localAppPath);
    return File('$path/$fileName.txt');
  }

  Future<File> writeFile(String text, [String fileName = '']) async {
    fileName = fileName.isNotEmpty ? fileName : 'fileName';
    final File file = await _localFile(fileName);

    // Write the file
    return file.writeAsString('$text');
  }
}

class TempFile {
  TempFile({this.name, this.content});
  final String name, content;
}
