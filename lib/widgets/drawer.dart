import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    String imageurl = "https://www.99images.com/photos/wallpapers/3d-abstract/iron-man-4kandroid-iphone-desktop-hd-backgrounds-wallpapers-1080p-4k-3rgcf.jpg?v=1578057366";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Jeevan gautam",
                textScaleFactor: 1.1,
                ),
                accountEmail: Text("jeevangautam26@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                ),
                ), 
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.home,color: Colors.white,),
                  title: Text("HOME",
                  textScaleFactor: 1.2,
                  style:TextStyle(
                    color: Colors.white,
                  ) ,
                  ),
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
                  title: Text("PROFILE",
                  textScaleFactor: 1.2,
                  style:TextStyle(
                    color: Colors.white,
                  ) ,
                  ),
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.mail,color: Colors.white,),
                  title: Text("MAIL ME",
                  textScaleFactor: 1.2,
                  style:TextStyle(
                    color: Colors.white,
                  ) ,
                  ),
                ),
          ],
        ),
      ),
    );
  }
}