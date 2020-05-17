import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  InputText({Key key, @required this.label}) : super(key: key);
  final String label;

  @override
  _InputTextState createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: TextFormField(
         decoration: InputDecoration(
           labelText:widget.label,
           contentPadding: EdgeInsets.symmetric(vertical:10)
         ),
       ),
    );
  }
}



