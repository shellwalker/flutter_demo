import 'package:flutter/material.dart';

import 'widgets/page_index.dart';

class Routes {
  static Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    DataPersistPageWidget.routeUrl: (BuildContext context) =>
        DataPersistPageWidget(),
  };
}
