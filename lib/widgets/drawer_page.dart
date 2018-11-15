import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(),
      children: <Widget>[
        UserAccountsDrawerHeader(
          currentAccountPicture: CircleAvatar(
            // API doc prefer using backgroundImage
            backgroundImage: NetworkImage(
                "https://github.com/shellwalker/flutter_demo/raw/master/netimages/avatar.jpg"),
          ),
          accountName: Text("shellwalker"),
          accountEmail: Text("sagittarius1212@gmail.com"),
        ),
        ListTile(
          title: Text("XXX 学习"),
          trailing: Icon(Icons.arrow_right),
          onTap: () {
            print("Tap xxx.");
            Navigator.pop(context);
          },
        ),
        new Divider(),
        ListTile(
          title: Text("YYY 学习"),
          trailing: Icon(Icons.arrow_right),
          onTap: () {
            print("Tap YYY");
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
