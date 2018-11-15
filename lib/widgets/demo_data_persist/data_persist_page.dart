import 'package:flutter/material.dart';

import 'shared_data.dart';
import 'shared_data_input_widget.dart';
import 'shared_preferences_widget.dart';

class DataPersistPageWidget extends StatefulWidget {
  static const String routeUrl = "/category/data-persist";

  @override
  _DataPersistPageWidgetState createState() => _DataPersistPageWidgetState();
}

class _DataPersistPageWidgetState extends State<DataPersistPageWidget> {
  SharedData _data = new SharedData(username: "jue", password: "test");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data-persist-title"),
      ),
      body: ListView(
        children: <Widget>[
          SharedDataInputWidget(data: _data),
          SharedPreferencesWidget(data: _data)
        ],
      ),
    );
  }
}
