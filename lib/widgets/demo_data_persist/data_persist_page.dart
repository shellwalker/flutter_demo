import 'package:flutter/material.dart';

class DataPersistWidget extends StatefulWidget {
  static const String routeUrl = "/category/data-persist";

  @override
  _DataPersistWidgetState createState() => _DataPersistWidgetState();
}

class _DataPersistWidgetState extends State<DataPersistWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data-persist-title"),
      ),
      body: Center(
        child: Text("Data-Persist-content"),
      ),
    );
  }
}
