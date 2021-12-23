import 'package:flutter/material.dart';
import 'package:insta_clone/src/app/ui/add_post/add_post_screen.dart';
import 'package:insta_clone/src/app/ui/chat/chat_screen.dart';
import '../../home.dart';

class Routes {
  Routes._();

  static const String homeScreen = '/';
  static const String chatScreen = '/chat';
  static const String addPostScreen = '/addPost';

  static final Map<String, WidgetBuilder> routes = {
    homeScreen : (context) => const Home(),
    chatScreen : (context) => const ChatScreen(),
    addPostScreen : (context) => const AddPostScreen(),
  };

}