import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/page_index.dart';

class Routes {
  static Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    DataPersistPageWidget.routeUrl: (BuildContext context) =>
        DataPersistPageWidget(),
    WxSkeletonClonePageWidget.routeUrl: (BuildContext context) =>
        WxSkeletonClonePageWidget(),
  };
}
