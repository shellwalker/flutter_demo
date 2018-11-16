import 'package:flutter/material.dart';

class ContentPageViewWidget {
  static List<Widget> createPageViewsWithDifferentColor() {
    return <Widget>[
      Container(
        color: Colors.red,
      ),
      Container(
        color: Colors.brown,
      ),
      Container(
        color: Colors.greenAccent,
      ),
      Container(
        color: Colors.purpleAccent,
      ),
    ];
  }
}
