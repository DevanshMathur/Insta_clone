import 'package:flutter/material.dart';
import '../../home.dart';

class Routes {
  Routes._();

  static const String homeScreen = '/';

  static final Map<String, WidgetBuilder> routes = {
    homeScreen : (context) => const Home(),
  };

}