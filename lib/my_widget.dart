import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {

  String str;
  Color color;
  MyWidget(this.str,this.color);
  @override

  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        margin: EdgeInsets.all(5.0),
        padding: EdgeInsets.only(left: 20.0),

        child: Text(str,style: TextStyle(
            fontSize: 30.0,
            color: Colors.white,
            letterSpacing: 3.0
        ),),
        color: color,
        alignment: Alignment.centerLeft,
      ),
    );
  }
}
