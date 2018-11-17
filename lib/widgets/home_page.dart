import 'package:flutter/material.dart';

import 'drawer_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("My Home Title"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
              print("icon list pressed.");
            },
          ),
        ],
      ),
      drawer: new Drawer(
        child: DrawerPageWidget(),
      ),
      body: Center(child: Text("My Simple Home Body")),
    );
  }
}
