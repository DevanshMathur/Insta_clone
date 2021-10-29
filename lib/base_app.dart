import 'package:flutter/material.dart';
import 'package:insta_clone/theme/app_themes.dart';

import 'src/navigation/routes.dart';

class BaseApp extends StatelessWidget {
  const BaseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routes: Routes.routes,
      initialRoute: Routes.homeScreen,
    );
  }
}
