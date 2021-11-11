import 'package:flutter/material.dart';
import 'package:lelo/pages/home/chat_page.dart';
import 'package:lelo/pages/home/home_page.dart';
import 'package:lelo/pages/home/plus_page.dart';
import 'package:lelo/pages/home/profile_page.dart';
import 'package:lelo/pages/home/wishlist_page.dart';
import 'package:lelo/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget customBottomNav() {
      return BottomNavigationBar(
        backgroundColor: backgroundColor2,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            print(value);
            currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(
                top: 10,
                bottom: 5,
              ),
              child: Image.asset(
                'assets/icon_home.png',
                width: 21,
                color: currentIndex == 0 ? primaryColor : blackTextColor,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(
                top: 10,
                bottom: 5,
              ),
              child: Image.asset(
                'assets/icon_buy.png',
                width: 21,
                color: currentIndex == 1 ? primaryColor : blackTextColor,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(
                top: 10,
                bottom: 5,
              ),
              child: Image.asset(
                'assets/icon_plus.png',
                width: 21,
                color: currentIndex == 2 ? primaryColor : blackTextColor,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(
                top: 10,
                bottom: 5,
              ),
              child: Image.asset(
                'assets/icon_chat.png',
                width: 21,
                color: currentIndex == 3 ? primaryColor : blackTextColor,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(
                top: 10,
                bottom: 5,
              ),
              child: Image.asset(
                'assets/icon_profil.png',
                width: 21,
                color: currentIndex == 4 ? primaryColor : blackTextColor,
              ),
            ),
            label: '',
          ),
        ],
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return WishlistPage();
        case 2:
          return PlusPage();
        case 3:
          return ChatPage();
        case 4:
          return ProfilPage();
        default:
          return HomePage();
      }
    }

    return Scaffold(
        backgroundColor: backgroundColor1,
        bottomNavigationBar: customBottomNav(),
        body: body());
  }
}
