import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class n extends StatefulWidget {
  nn createState() => nn();
}

class nn extends State<n> {
  late int indexof = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.red,
          onTap: (index) {
            setState(() {
              indexof = index;
            });

            print(index);
          },
          items: [
            Icon(Icons.home),
            Icon(Icons.abc),
            Icon(Icons.nat),
          ]),
    );
  }
}
