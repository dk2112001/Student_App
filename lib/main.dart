import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_table/pages/home_page.dart';
import 'package:time_table/pages/login_page.dart';
import 'package:time_table/pages/singinup.dart';
import 'package:time_table/pages/widgets/themes.dart';
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
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),        
        

      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homenRout,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.singupRouts: (context)=> const SingupPage(),
        MyRoutes.homenRout: (context)=> const HomePage(),
        MyRoutes.loginRouts: (context)=> const LoginPage(),
      },
    );
  }
}
