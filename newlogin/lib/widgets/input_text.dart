import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  InputText({Key key, @required this.label, this.inputType = TextInputType.text, this.validator, this.isSecure=false}) : super(key: key);
  final String label;
  final Function(String) validator;
  final bool isSecure;
  final TextInputType inputType;

  @override
  _InputTextState createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: TextFormField(
         keyboardType: widget.inputType ,
         obscureText: widget.isSecure,
         validator: widget.validator,
         decoration: InputDecoration(
           labelText:widget.label,
           contentPadding: EdgeInsets.symmetric(vertical:10)
         ),
       ),
    );
  }
}



