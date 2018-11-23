import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/page_index.dart';

class DrawerPageWidget extends StatefulWidget {
  @override
  _DrawerPageWidgetState createState() => _DrawerPageWidgetState();
}

class _DrawerPageWidgetState extends State<DrawerPageWidget> {
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
          title: Text("Data Persist"),
          trailing: Icon(Icons.arrow_right),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, DataPersistPageWidget.routeUrl);
          },
        ),
        new Divider(),
        ListTile(
          title: Text("Wx Clone"),
          trailing: Icon(Icons.arrow_right),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, WxSkeletonClonePageWidget.routeUrl);
          },
        ),
      ],
    );
  }
}
