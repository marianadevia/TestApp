import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:newlogin/widgets/circle.dart';
import 'package:newlogin/widgets/input_text.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  }
  _submit(){
    _formKey.currentState.validate();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).requestFocus(FocusNode());
        },
              child: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            children: <Widget>[
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
                        Text('Hello again.\ Welcome',
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
                          child: Form(
                            key: _formKey ,
                                                      child: Column(
                              children:<Widget>[
                                InputText(
                                  label: 'USERNAME',
                                  validator: (String text){
                                    if(RegExp(r'^[a-zA-Z0-9]').hasMatch(text)){
                                        return null;
                                    }
                                    
                                    return 'Invalid UserName';
                                  }
                                ),
                                SizedBox(height:20),
                                InputText(
                                  label: 'EMAIL ADDRESSS',
                                  inputType: TextInputType.emailAddress,
                                  validator: (String text){
                                    if(text.contains('@')){
                                        return null;
                                    }
                                    
                                    return 'Invalid Email';
                                  }
                                ),
                                SizedBox(
                            height:20
                        ),
                                InputText(
                                  label: 'PASSWORD',
                                  isSecure: true,
                                
                                  validator: (String text){
                                    if(text.isNotEmpty && text.length>5){
                                      return null;
                                    }
                                    return 'Invalid Password';
                                  },
                                ),
                              ]
                            ),
                          )
                        ),
                        SizedBox(
                          height:50
                        ),
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
                            child: Text('Sign Up',
                            style: TextStyle(
                              fontSize:20
                            ),
                          ),
                            onPressed: () {
                              _submit();
                            },
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
                          ), onPressed: ()=> Navigator.pushNamed(context, "signUp")
                          )
                          ],
                        ),
                        SizedBox(
                          height:size.height*0.08
                        )
                      ],
                    ),
                  ]),
                ),
              ),
            
            ),
            Positioned(
              left:15,
              top: 5,
              child: SafeArea(
                              child: CupertinoButton(
                  padding: EdgeInsets.all(10),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black12,
                  child: Icon(Icons.arrow_back, color:Colors.white), 
                  onPressed: ()=>Navigator.pop(context),

                  ),
              ),
                ),
          ]
          ),
        ),
      ),
    );
  }
}
