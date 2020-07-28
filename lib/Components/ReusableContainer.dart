import 'package:flutter/material.dart';


class ReusableContainer extends StatelessWidget {
  final String  Number;
  final String text;
  ReusableContainer({this.text,this.Number});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(Number,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22,color: Colors.black),),
        SizedBox(height: 3,),
        Text(text,style: TextStyle(fontSize: 18,color: Colors.black87,fontWeight: FontWeight.w600),)
      ],
    );
  }
}
