import 'package:flutter/material.dart';
import 'package:time_table/pages/widgets/drawer.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
   const HomePage({ Key? key }) : super(key: key);
  

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      
      appBar: AppBar( 
        
       
        title: const Text("Student App",
        style: TextStyle(color: Colors.black),
        ),
      ),
      
    
        body: Center(
          
        
          // ignore: avoid_unnecessary_containers
          child: Container(
            
            child: const Text("Student App"),
          ),
          
        ),
        drawer: const MyDrawer(),
      
      );
  }
}
