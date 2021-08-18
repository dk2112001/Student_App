// ignore: unused_import
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        title: const Text(" Student App"),
      ),
    
        body: Center(
          // ignore: avoid_unnecessary_containers
          child: Container(
            // ignore: prefer_const_constructors
            child: Text("Student App"),
          ),
        ),
        drawer: const Drawer(),
      );
    return scaffold;
  }
}