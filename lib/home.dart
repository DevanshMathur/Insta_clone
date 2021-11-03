import 'package:flutter/material.dart';

import './src/app/ui/home/home_page.dart';
import './src/app/ui/notification/notification_page.dart';
import './src/app/ui/profile/profile_page.dart';
import './src/app/ui/reels/reels_page.dart';
import './src/app/ui/search/search_page.dart';
import './src/utils/create_data.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedPage = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const SearchPage(),
    const ReelsPage(),
    const NotificationPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    CreateData.createStatus();
    CreateData.createPost(1, 1, 1);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_outlined,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.smart_display_outlined,
            ),
            label: "Reel",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_outlined,
            ),
            label: "Notification",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
            ),
            label: "Profile",
          ),
        ],
        currentIndex: _selectedPage,
        onTap: (index) {
          setState(() {
            _selectedPage = index;
          });
        },
      ),
      body: SafeArea(
        child: _pages[_selectedPage],
      ),
    );
  }
}
