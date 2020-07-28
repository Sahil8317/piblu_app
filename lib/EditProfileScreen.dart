import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:piblu_app/Components/ProfileFillWidget.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Edit Profile',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black87,letterSpacing: 1),),

        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/Images/UserProfilePhoto.jpg'),fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black)
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text('Change Profile Photo',style: TextStyle(fontSize: 20,color: Colors.blueAccent),)
                  ],
                ),
              ),
              ProfileFillWidget(text: 'Name',),
              ProfileFillWidget(text: 'UserName',),
              ProfileFillWidget(text:'Bio'),
              Container(
                height: 80,
                width: 130,
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.black45,
                  image: DecorationImage(image: AssetImage('assets/Images/back2.jpg',),fit: BoxFit.fill)
                ),
              ),
              Text('Change Background Image',style: TextStyle(fontSize: 20,color: Colors.blueAccent),),
              Center(
                child: FlatButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  color: Colors.blueAccent,
                  child: Text('Save',style: TextStyle(color: Colors.white),),
                ),
              )

            ],
          ),
        ),

      ),
    );
  }
}
