import 'package:flutter/material.dart';
import '../app/ui/home/home_screen.dart';

class Routes {
  Routes._();

  static const String homeScreen = '/';

  static final Map<String, WidgetBuilder> routes = {
    homeScreen : (context) => const HomeScreen(),
  };

}