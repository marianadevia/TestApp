import 'package:flutter/material.dart';
import 'package:newlogin/pages/login.dart';
import 'package:newlogin/pages/sign_up.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home:LoginPage() ,
      routes: {
        "login":(context)=> LoginPage(),
        "signUp":(context)=> SignUpPage(),
      },
    );
  }
}

