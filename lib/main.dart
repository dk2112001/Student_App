import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_table/pages/home_page.dart';
import 'package:time_table/pages/login_page.dart';
import 'package:time_table/utils/routes.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  get debugShowCheckedModeBanner => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      

      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homenRout,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homenRout: (context)=> const HomePage(),
        MyRoutes.loginRouts: (context)=> const LoginPage(),
      },
    );
  }
}
