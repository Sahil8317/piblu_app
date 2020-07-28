import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:piblu_app/Components/PostContainer.dart';
import 'package:piblu_app/EditProfileScreen.dart';
import 'package:piblu_app/Components/ReusableContainer.dart';


class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}
class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
            children:[ Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Container(
                    padding:EdgeInsets.fromLTRB(12,20,20,12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                        ),
                        color: Colors.white,
                        image: DecorationImage(image: AssetImage('assets/Images/back2.jpg'),fit: BoxFit.fill,)
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                GestureDetector(
                                    onTap:(){
                                      SystemNavigator.pop();
                                    },
                                    child: Icon(Icons.arrow_back,color:Colors.black,size: 28,)),
                                SizedBox(width: 10,),
                                Text("User's User Name",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.w600
                                ),),
                              ],
                            ),
                            PopupMenuButton(
                              onSelected:(value){
                                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                                  return EditProfileScreen();
                                }));
                              },
                              itemBuilder: (BuildContext context){
                                return [
                                  PopupMenuItem(
                                    value: 1,
                                    child: Text('Edit Profile'),
                                  ),
                                ];
                              },
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 110,
                          height: 110,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/Images/UserProfilePhoto.jpg'),fit: BoxFit.fill,
                              ),
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black)
                          ),
                        ),
                        SizedBox(height: 14,),
                        Text("User's Full Name",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 26,letterSpacing: 1),),
                        SizedBox(height: 5,),
                        Text('User Bio',style: TextStyle(fontSize: 18,color: Colors.black54,fontWeight: FontWeight.w600,letterSpacing: 1),),

                      ],
                    )
                    ,
                  ),
                ),
                Expanded(
                    flex: 4,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(left:22,right: 22),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 60,),
                            Text('Posts',style: TextStyle(fontSize: 26,color: Colors.black54,fontWeight: FontWeight.w700,letterSpacing: 1),),
                            SizedBox(height: 18,),
                            PostContainer(imageName: 'assets/Images/Mumbai.jpg',caption:'The City That Never Sleeps.',comments: '18',likes:'212',),
                            SizedBox(height: 15,),
                            PostContainer(imageName: 'assets/Images/Nagpur.jpg',caption: 'Finally  Orange City Nagpur',comments: '15',likes: '205',),
                            SizedBox(height: 20,),

                          ],
                        ),
                      ),
                    )
                ),
              ],

            ),
              Align(
                alignment: Alignment.centerRight,
                child: Material(
                  elevation: 8,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomLeft: Radius.circular(50)),
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width*0.86,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomLeft: Radius.circular(50))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: <Widget>[
                        ReusableContainer(text: 'Posts',Number: '2',),
                        ReusableContainer(text: 'Followers',Number: '320',),
                        ReusableContainer(text: 'Following',Number: '460',)
                      ],
                    ),
                  ),
                ),
              )
            ]
        ),
      ),
    );
  }
}




