import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class basicful extends StatefulWidget {
  basicClass createState() => basicClass();
}

class basicClass extends State<basicful> {
  final player = AudioPlayer();
  Future<void> playAudioFromUrl(String url) async {
    await player.play(UrlSource(url));
  }

  Widget build(BuildContext context) {
    return Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MaterialButton(
            onPressed: (() {
              playAudioFromUrl('audio/click.mpeg');
            }),
            color: Color.fromARGB(255, 3, 89, 118),
            height: 80,
            hoverColor: Color.fromARGB(255, 3, 127, 152),
            hoverElevation: 40,
            splashColor: Color.fromARGB(255, 76, 230, 230),
            textTheme: ButtonTextTheme.normal,
            elevation: 8,
            child: Icon(Icons.exposure_minus_1),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          MaterialButton(
            onPressed: (() {
              playAudioFromUrl('audio/click.mpeg');
            }),
            color: Color.fromARGB(255, 3, 89, 118),
            height: 80,
            hoverColor: Color.fromARGB(255, 3, 127, 152),
            hoverElevation: 40,
            splashColor: Color.fromARGB(255, 76, 230, 230),
            textTheme: ButtonTextTheme.normal,
            elevation: 8,
            child: Icon(Icons.home),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MaterialButton(
            onPressed: (() {
              playAudioFromUrl('audio/click.mpeg');
            }),
            color: Color.fromARGB(255, 3, 89, 118),
            height: 80,
            hoverColor: Color.fromARGB(255, 3, 127, 152),
            hoverElevation: 40,
            splashColor: Color.fromARGB(255, 76, 230, 230),
            textTheme: ButtonTextTheme.normal,
            elevation: 8,
            child: Icon(Icons.home),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          MaterialButton(
            onPressed: (() {
              playAudioFromUrl('audio/click.mpeg');
            }),
            color: Color.fromARGB(255, 3, 89, 118),
            height: 80,
            hoverColor: Color.fromARGB(255, 3, 127, 152),
            hoverElevation: 40,
            splashColor: Color.fromARGB(255, 76, 230, 230),
            textTheme: ButtonTextTheme.normal,
            elevation: 8,
            child: Icon(Icons.home),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MaterialButton(
            onPressed: (() {
              playAudioFromUrl('audio/click.mpeg');
            }),
            color: Color.fromARGB(255, 3, 89, 118),
            height: 80,
            hoverColor: Color.fromARGB(255, 3, 127, 152),
            hoverElevation: 40,
            splashColor: Color.fromARGB(255, 76, 230, 230),
            textTheme: ButtonTextTheme.normal,
            elevation: 8,
            child: Icon(Icons.home),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          MaterialButton(
            onPressed: (() {
              playAudioFromUrl('audio/click.mpeg');
            }),
            color: Color.fromARGB(255, 3, 89, 118),
            height: 80,
            hoverColor: Color.fromARGB(255, 3, 127, 152),
            hoverElevation: 40,
            splashColor: Color.fromARGB(255, 76, 230, 230),
            textTheme: ButtonTextTheme.normal,
            elevation: 8,
            //child: Icon(Icons.home),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MaterialButton(
            onPressed: (() {
              playAudioFromUrl('audio/click.mpeg');
            }),
            color: Color.fromARGB(255, 3, 89, 118),
            height: 80,
            hoverColor: Color.fromARGB(255, 3, 127, 152),
            hoverElevation: 40,
            splashColor: Color.fromARGB(255, 76, 230, 230),
            textTheme: ButtonTextTheme.normal,
            elevation: 8,
            child: Icon(Icons.home),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          MaterialButton(
            onPressed: (() {
              playAudioFromUrl('audio/click.mpeg');
            }),
            color: Color.fromARGB(255, 3, 89, 118),
            height: 80,
            hoverColor: Color.fromARGB(255, 3, 127, 152),
            hoverElevation: 40,
            splashColor: Color.fromARGB(255, 76, 230, 230),
            textTheme: ButtonTextTheme.normal,
            elevation: 8,
            child: Icon(Icons.home),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MaterialButton(
            onPressed: (() {
              playAudioFromUrl('audio/click.mpeg');
            }),
            color: Color.fromARGB(255, 3, 89, 118),
            height: 80,
            hoverColor: Color.fromARGB(255, 3, 127, 152),
            hoverElevation: 40,
            splashColor: Color.fromARGB(255, 76, 230, 230),
            textTheme: ButtonTextTheme.normal,
            elevation: 8,
            child: Icon(Icons.home),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          MaterialButton(
            onPressed: (() {
              playAudioFromUrl('audio/click.mpeg');
            }),
            color: Color.fromARGB(255, 3, 89, 118),
            height: 80,
            hoverColor: Color.fromARGB(255, 3, 127, 152),
            hoverElevation: 40,
            splashColor: Color.fromARGB(255, 76, 230, 230),
            textTheme: ButtonTextTheme.normal,
            elevation: 8,
            child: Icon(Icons.data_exploration_rounded),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ],
      ),
    ]));
  }
}
