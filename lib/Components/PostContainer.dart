import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
class PostContainer extends StatelessWidget {
  final String imageName;
  final String caption;
  final String likes;
  final String comments;

  PostContainer({this.caption,this.comments,this.imageName,this.likes});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*0.28,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(25)),
              image: DecorationImage(image: AssetImage(imageName),fit: BoxFit.fill)
          ),

        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(caption,style: TextStyle(fontSize: 17,color: Colors.black54),),
              Icon(Icons.comment,color: Colors.black54,size: 20,),
              Text(comments,style: TextStyle(fontSize: 17,color: Colors.black54),),
              Icon(AntDesign.heart,color: Colors.red,size: 20),
              Text(likes,style: TextStyle(fontSize: 17,color: Colors.black54),)
            ],
          ),
        ),

      ],
    );
  }
}