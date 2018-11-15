import 'package:flutter/material.dart';

import './widgets/page_index.dart';

class Routes {
  static Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    DataPersistWidget.routeUrl: (BuildContext context) => DataPersistWidget(),
  };
}
