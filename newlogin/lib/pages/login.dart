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
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(children: <Widget>[
          Positioned(
              right: -size.width * 0.25,
              top: -size.width * 0.36,
              child: Circle(
                  radius: size.width * 0.45,
                  colors: [Colors.pink, Colors.pinkAccent])),
          Positioned(
              left: -size.width * 0.15,
              top: -size.width * 0.34,
              child: Circle(
                  radius: size.width * 0.35,
                  colors: [Colors.orange, Colors.deepOrange])),
          SingleChildScrollView(
            child: Container(
              width: size.width,
              height: size.height,
              child: SafeArea(
                              child: Column(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  
                  Column(
                    children: <Widget>[
                      Container(
                          width: 90,
                          height: 90,
                          margin: EdgeInsets.only(top: size.width * 0.3),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(color: Colors.black26, blurRadius: 25)
                              ])),
                      SizedBox(
                        height: 30,
                      ),
                      Text('Hello again.\ Welcome Back',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w100,
                          ))
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: 350,
                          minWidth: 350
                        ),
                        child: CupertinoButton(
                          padding: EdgeInsets.symmetric(
                            vertical:17
                          ),
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(4),
                          child: Text('Sign In',
                          style: TextStyle(
                            fontSize:20
                          ),
                        ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                         Text('New to Friendly Easy?',
                          style: TextStyle(
                            fontSize:16,
                            color: Colors.black54
                          ),
                        ), 
                        CupertinoButton(child: Text('Sign Up',
                          style: TextStyle(
                            fontSize:16,
                            color:Colors.pinkAccent
                          ),
                        ), onPressed: (){})
                        ],
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          
          )
        ]),
      ),
    );
  }
}
