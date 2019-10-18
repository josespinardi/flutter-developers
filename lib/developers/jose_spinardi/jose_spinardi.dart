import 'package:flutter/material.dart';
import 'package:groovin_material_icons/groovin_material_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class JoseSpinardiPage extends StatefulWidget {
  @override
  _JoseSpinardiPageState createState() => _JoseSpinardiPageState();
}

class _JoseSpinardiPageState extends State<JoseSpinardiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Developers")),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/developers/jose_spinardi/avatar.png",
                ),
                radius: 50,
              ),
              SizedBox(height: 10),
              Text(
                "Jose Spinardi",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              SizedBox(height: 3),
              Text(
                "Backend Developer",
                style: TextStyle(),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        FlatButton(
                            onPressed: () {
                              launch("https://github.com/josespinardi");
                            },
                            child: Icon(GroovinMaterialIcons.github_box,
                                color: Colors.black, size: 30.0))
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        FlatButton(
                            onPressed: () {
                              launch(
                                  "https://www.linkedin.com/in/josespinardi");
                            },
                            child: Icon(GroovinMaterialIcons.linkedin_box,
                                color: Colors.black, size: 30.0))
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        FlatButton(
                            onPressed: () {
                              launch("https://twitter.com/_jooseph");
                            },
                            child: Icon(GroovinMaterialIcons.twitter_box,
                                color: Colors.black, size: 30.0))
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Card(
                elevation: 4.0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(height: 10),
                    const ListTile(
                      leading: Icon(Icons.book),
                      title: Text('Didatic Pancake'),
                      subtitle: Text(
                          'Created to learn and test code with Flutter and Dart.'),
                    ),
                    ButtonTheme.bar(
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text("VIEW REPO"),
                            onPressed: () {
                              launch(
                                  "https://github.com/josespinardi/didatic-pancake-flutter");
                            },
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                elevation: 4.0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(height: 10),
                    const ListTile(
                      leading: Icon(Icons.book),
                      title: Text('We Want You'),
                      subtitle: Text(
                          'Created for a hackathon, this project would help tech companies make good hires based on Github profiles.'),
                    ),
                    ButtonTheme.bar(
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text("VIEW REPO"),
                            onPressed: () {
                              launch("https://github.com/wewantyou");
                            },
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                elevation: 4.0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(height: 10),
                    const ListTile(
                      leading: Icon(Icons.book),
                      title: Text('Truck My Food'),
                      subtitle: Text(
                          'A Xamarin app created using geolocation to find nearby food trucks.'),
                    ),
                    ButtonTheme.bar(
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text("VIEW REPO"),
                            onPressed: () {
                              launch(
                                  "https://github.com/TruckMyFood/TruckMyFood.Mobile");
                            },
                          )
                        ],
                      ),
                    )
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
