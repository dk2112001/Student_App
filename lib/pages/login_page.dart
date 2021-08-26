import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_table/utils/routes.dart';


 class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
@override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    String name ="";

    bool changeButton = false;
    final _formkey = GlobalKey<FormState>();

  
    moveToHome(BuildContext context) async {
      if(_formkey.currentState!.validate()){
      setState((){
                          changeButton = true;
                          } );
                          await Future.delayed(const Duration(seconds: 1)); 
                          await Navigator.pushNamed(context, MyRoutes.homenRout);
                          setState((){
                          changeButton = false;
                          } );
      }
    }
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(   
              children: [
                Image.asset(
                  "assets/images/charusat.png",
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
                     padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
             child: Column(
                      children: [
                       TextFormField(
                     decoration: const InputDecoration(
                     hintText: "Enter User Name",
                     labelText: "Username",
                     ),
                     validator:(value){
                       if (value!.isEmpty){
                         return "Username cannot be empty";
                       }
                       return null;
                     },
                     onChanged: (value){
                       name=value;
                       setState(() {});
                     },
                     ),
                   
                     TextFormField(
                     obscureText: true,
                     decoration: const InputDecoration(
                     hintText: "Enter Password",
                     labelText: "Password",
                     ),
                     validator:(value){
                       if (value!.isEmpty){
                         return "Password cannot be empty";
                       }
                       return null;
                     },
                      ),
                     const SizedBox(
                     height: 20.0,
                     ),

                    Material(
                      color: Colors.deepPurple,
                      borderRadius:
                            BorderRadius.circular(changeButton ? 20 : 8),
                     child: InkWell(
                       onTap: () => moveToHome(context),
                       child: AnimatedContainer(
                         duration: const Duration(seconds: 1),
                         width: changeButton ? 50 : 150,
                         height: 40,
                         
                         alignment: Alignment.center,
                         child:changeButton
                         ?const Icon(
                           Icons.done,
                           color: Colors.white,
                           ) 
                           : const Text(
                             "login",
                             style: TextStyle(
                               color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                         ),
                         
                          
                           
                         ),
                       )
                     
                         ),
                       
                      ],
                    
                  ),
                  
                   ),
              ],              
            ),
          ),
          
          ),
    );
  }


}