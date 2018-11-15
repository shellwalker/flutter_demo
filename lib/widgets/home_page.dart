import 'package:flutter/material.dart';

import './drawer_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("My Home Title"),
//        actions: <Widget>[
//          Icon(Icons.list),
//        ],
      ),
      drawer: new Drawer(
        child: DrawerWidget(),
      ),
      body: Center(child: Text("My Simple Home Body")),
    );
  }
}
