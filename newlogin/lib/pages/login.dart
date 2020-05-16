import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:newlogin/widgets/circle.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
   final size= MediaQuery.of(context).size;
   
    return Scaffold(
     body: Container(
       width: size.width,
       height: size.height,
       child: Stack(
         children:<Widget>[
           Positioned(
             left: -100,
             top: -100,
             child: Circle(
               radius:200,
               colors:[
                 Colors.orange,
                 Colors.deepOrange
               ]
             )
           )
         ]
       ),
     ),
      
    );
  }
}