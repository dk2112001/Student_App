// ignore: unused_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
                 ),
                 const SizedBox(
                  height: 20.0,
                  child: Text("Welcome")
                  ),
                  const Text(
                 "Student App",
                 style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
             ),
              ),
                  const SizedBox(
                  height: 20.0,
             ),
                 Padding(
                 padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
              child: Column(
                  children: [
                   TextFormField(
                 decoration: const InputDecoration(
                 hintText: "Enter User Name",
                 labelText: "Username",
                 ),
                 ),

                 TextFormField(
                 obscureText: true,
                 decoration: const InputDecoration(
                 hintText: "Enter Password",
                 labelText: "Password",
                 ),
                  ),
                 const SizedBox(
                 height: 20.0,
                 ),
                 ElevatedButton(
                 
                 child: const Text("Login"),
                 style: TextButton.styleFrom(),
                 onPressed: () {},
                   
                 ),
                 
                ],

               ),
               ),
            
               ],
        
        ));
  }
}