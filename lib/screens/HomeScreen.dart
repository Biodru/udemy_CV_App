import 'package:flutter/material.dart';
import 'package:udemy_cv/widgets/SkillWidget.dart';
import 'package:udemy_cv/widgets/MyTile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //SafeArea pozwala na pozwala na umieszczenie widgetów w miejscu wolnej od wcięć w ekranach, dziur i tego typu rzeczy
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      minRadius: 40,
                      backgroundColor: Colors.blue,
                      //Używając obrazka z assetów, musimy podać jego pełną ścieżkę
                      backgroundImage: AssetImage("assets/images/photo.png"),
                    ),
                    //Flexible pozwala nam określić ile miejsca ma zająć dany widget
                    Flexible(
                      flex: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                          softWrap: true,
                          maxLines: 5,
                          overflow: TextOverflow.visible,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.blue,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Kluczowe umiejętności: ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      //SkillWidget: ten widget stworzyliścmy sami i znajduje się w folderze widgets
                      SkillWidget(
                        skill: 'Flutter',
                        level: 0.8,
                      ),
                      SkillWidget(
                        skill: 'Swift',
                        level: 0.7,
                      ),
                      SkillWidget(
                        skill: 'Java',
                        level: 0.6,
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.blue,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Języki ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SkillWidget(
                        skill: 'Angielski',
                        level: 0.8,
                      ),
                      SkillWidget(
                        skill: 'Niemiecki',
                        level: 0.5,
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.blue,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Edukacja ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      //MyTile: ten widget stworzyliścmy sami i znajduje się w folderze widgets
                      MyTile(
                        eduName: 'Szkoła średnia',
                        eduTime: '2015-2018',
                      ),
                      MyTile(
                        eduName: 'Studia',
                        eduTime: '2018-obecnie',
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.blue,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Doświadczenie ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      MyTile(
                        eduName: 'Nazwa stanowiska',
                        eduTime: 'Firma (2019-obecnie)',
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.blue,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Zainteresowania ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                          softWrap: true,
                          maxLines: 5,
                          overflow: TextOverflow.visible,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.blue,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      //FontAwesomeIcons: to pakiet, który ma mnóstwo ciekawych i przydatnych ikon
                      icon: Icon(FontAwesomeIcons.github),
                      color: Colors.indigo,
                      onPressed: () {
                        _launchURL("https://github.com/Biodru");
                      },
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.twitter),
                      color: Colors.lightBlue,
                      onPressed: () {
                        _launchURL("https://twitter.com/Biodru9");
                      },
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.youtube),
                      color: Colors.red,
                      onPressed: () {
                        _launchURL(
                            "https://www.youtube.com/channel/UCPaPn74WPOhEcv79SglzNvQ?view_as=subscriber");
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Funkja z pakietu url_launcher, tylko lekko zmodyfikowana, żeby przymowała argument z linkiem, który ma otworzyć
_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
