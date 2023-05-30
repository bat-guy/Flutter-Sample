import 'package:flutter/material.dart';
import 'package:flutter_sample/pages/choose_location.dart';
import 'package:flutter_sample/pages/home.dart';
import 'package:flutter_sample/pages/splash.dart';

void main() => runApp(MaterialApp(
      // initialRoute: '/home',
      routes: {
        '/': (context) => Splash(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      },
    ));
