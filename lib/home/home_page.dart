import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:yhq/constants/colors.dart';
import 'package:yhq/pages/basic_page.dart';
import 'package:yhq/pages/favourite_page.dart';
import 'package:yhq/pages/search_page.dart';
import 'package:yhq/pages/sms_page.dart';
import 'package:yhq/pages/video_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  static final String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItem = 0;
  var _pages = [
    BasicPage(),
    VideoPage(),
    FavouritePage(),
    SendSms(),
    // ...
  ];

  var _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor1,
      body: PageView(
        children: _pages,
        onPageChanged: (index) {
          setState(() {
            _selectedItem = index;
          });
        },
        controller: _pageController,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Ionicons.ios_home, size: 26),
            title: Text("Feed"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.ios_videocam, size: 26),
            title: Text("Video"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.ios_star, size: 26),
            title: Text("Favourite"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.ios_send, size: 26),
            title: Text("SmS"),
          ),
        ],
        currentIndex: _selectedItem,
        onTap: (index) {
          setState(
            () {
              _selectedItem = index;
              _pageController.animateToPage(_selectedItem,
                  duration: Duration(microseconds: 200), curve: Curves.linear);
            },
          );
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: primary_color,
        unselectedItemColor: Colors.grey[700],
      ),
    );
  }
}
