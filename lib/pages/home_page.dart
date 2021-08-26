// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:time_table/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  get title => null;

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
       
        title: const Text(" Student App",
        style: TextStyle(color: Colors.black),
        ),
        
      ),
    
        body: Center(
          // ignore: avoid_unnecessary_containers
          child: Container(
            // ignore: prefer_const_constructors
            child: Text("Student App"),
          ),
        ),
        drawer: const MyDrawer(),
      );
    return scaffold;
  }
}