import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/drawer_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _lastPressTime = 0; // last-time response the back button

  // Show a dialog while press back button
  Future<bool> _onWillPopDialog() {
    return showDialog(
          context: context,
          builder: (context) => new AlertDialog(
                title: new Text('Are you sure?'),
                content: new Text('Do you want to exit an App'),
                actions: <Widget>[
                  new FlatButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: new Text('No'),
                  ),
                  new FlatButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    child: new Text('Yes'),
                  ),
                ],
              ),
        ) ??
        false;
  }

  Future<bool> _onWillPopDoubleClickBack() {
    int now = DateTime.now().millisecond;
    print("last: $_lastPressTime");
    print("now: $now");
    if (now - _lastPressTime > 800) {
      _lastPressTime = DateTime.now().millisecond;
      Fluttertoast.showToast(
          msg: "Click back button once more to exit!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM);
      return Future.value(false);
    } else {
      return Future.value(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: _onWillPopDoubleClickBack,
        child: Scaffold(
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
        ));
  }
}
