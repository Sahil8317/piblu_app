import 'package:flutter/material.dart';

class ProfileFillWidget extends StatelessWidget {
  final String text;
  ProfileFillWidget({this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(text,style: TextStyle(fontSize: 18,color: Colors.black45),),
        TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(4),
            isDense: true,
          ),
        )
      ],);
  }
}
