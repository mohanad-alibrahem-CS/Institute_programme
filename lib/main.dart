import 'package:flutter/material.dart';
import 'package:hello/Login_screen.dart';
import 'package:hello/home_screen.dart';

import 'basic_screen.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginful(),
    );
  }
}
