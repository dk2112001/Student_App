// ignore_for_file: dead_code, unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    show BuildContext, Key, MaterialApp, StatelessWidget, Widget, runApp;
import 'package:flutter/material.dart';

import 'package:time_table/pages/home_page.dart';
import 'package:time_table/pages/login_page.dart';


void main() {
  // ignore: prefer_const_constructors
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      themeMode: ThemeMode.light,
      theme: ThemeData(



        
      ),
      initialRoute: "/",

      routes: {
        "/": (context) => const LoginPage(),
        "/home": (context) => const HomePage(),
        
      },
    );
  }
}

class GoogleFonts {
}
