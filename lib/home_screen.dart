import 'package:audioplayers/audioplayers.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello/basic_screen.dart';
import 'package:hello/map_screen.dart';
import 'package:hello/times_screen.dart';

class phone extends StatelessWidget {
  Widget build(BuildContext context) {
    return Text("phone");
  }
}

class reloading extends StatelessWidget {
  Widget build(BuildContext context) {
    return Text("reloading");
  }
}

class Homeful extends StatefulWidget {
  @override
  homeclass createState() => homeclass();
}

class homeclass extends State<Homeful> {
  final GlobalKey<ScaffoldState> beck = GlobalKey<ScaffoldState>();
  int indexof = 0;

  List<Widget> class_home = [
    basicful(),
    mapful(),
    timeful(),
    reloading(),
    phone()
  ];

  final player = AudioPlayer();

  Future<void> playAudioFromUrl(String url) async {
    await player.play(UrlSource(url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: beck,
        backgroundColor: Color.fromARGB(255, 95, 179, 213),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 3, 127, 152),
          leadingWidth: 100,
        ),
        drawer: Drawer(
            backgroundColor: Color.fromARGB(255, 95, 179, 213),
            width: 120,
            child: Column(children: [
              SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                IconButton(
                    onPressed: () {
                      beck.currentState!.openEndDrawer();
                    },
                    icon: Icon(Icons.arrow_circle_right_outlined))
              ]),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: (() {
                  playAudioFromUrl('audio/click.mpeg');
                }),
                color: Color.fromARGB(255, 3, 89, 118),
                height: 20,
                hoverColor: Color.fromARGB(255, 3, 127, 152),
                hoverElevation: 40,
                splashColor: Color.fromARGB(255, 76, 230, 230),
                textTheme: ButtonTextTheme.normal,
                elevation: 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("تنزيلات"),
                    Icon(Icons.arrow_circle_down_sharp)
                  ],
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: (() {
                  playAudioFromUrl('audio/click.mpeg');
                }),
                color: Color.fromARGB(255, 3, 89, 118),
                height: 20,
                hoverColor: Color.fromARGB(255, 3, 127, 152),
                hoverElevation: 40,
                splashColor: Color.fromARGB(255, 76, 230, 230),
                textTheme: ButtonTextTheme.normal,
                elevation: 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("الاعدادات"), (Icon(Icons.settings))],
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: (() {
                  playAudioFromUrl('audio/click.mpeg');
                }),
                color: Color.fromARGB(255, 3, 89, 118),
                height: 20,
                hoverColor: Color.fromARGB(255, 3, 127, 152),
                hoverElevation: 40,
                splashColor: Color.fromARGB(255, 76, 230, 230),
                textTheme: ButtonTextTheme.normal,
                elevation: 8,
                child: Text("التحميلات "),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: (() {
                  playAudioFromUrl('audio/click.mpeg');
                }),
                color: Color.fromARGB(255, 3, 89, 118),
                height: 20,
                hoverColor: Color.fromARGB(255, 3, 127, 152),
                hoverElevation: 40,
                splashColor: Color.fromARGB(255, 76, 230, 230),
                textTheme: ButtonTextTheme.normal,
                elevation: 8,
                child: Text("التحميلات "),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            ])),
        body: class_home[indexof],
        bottomNavigationBar: CurvedNavigationBar(
            color: Color.fromARGB(255, 3, 127, 152),
            backgroundColor: Color.fromARGB(255, 95, 179, 213),
            buttonBackgroundColor: Color.fromARGB(255, 3, 89, 118),
            onTap: (index) {
              playAudioFromUrl('audio/click.mpeg');
              setState(() {
                indexof = index;
              });

              print(index);
            },
            items: [
              Icon(Icons.home),
              Icon(Icons.add_location_outlined),
              Icon(Icons.alarm_outlined),
              Icon(Icons.wifi_protected_setup_outlined),
              Icon(Icons.call_outlined),
            ]));
  }
}
