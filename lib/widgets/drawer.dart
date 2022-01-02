import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
  Widget build(BuildContext context){
    final imageUrl="https://www.google.com/search?q=vasanth+kumar+theliki&sxsrf=AOaemvLq0MAqIX1PUkH18dtXOxBGTgtQbg:1639296442687&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjM9JaR5930AhV94XMBHbKEBOgQ_AUoAXoECAQQAw&biw=1440&bih=821&dpr=1#imgrc=L1aD8656Ds8NEM";

    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Vasanth Kumar T"),
                accountEmail: Text("vasantht.cs19@bmsce.ac.in"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              )
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text(
                "Home",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.collections),
            title: Text(
              "Courses",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.time),
            title: Text(
              "Events",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.collections),
            title: Text(
              "Internship",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail),
            title: Text(
              "Mail",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.share),
            title: Text(
              "Share",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.fullscreen_exit),
            title: Text(
              "Exit",
              textScaleFactor: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}