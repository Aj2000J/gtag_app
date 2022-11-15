import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gtag_app/screen/profile.dart';
import 'package:gtag_app/screen/setting.dart';
import 'package:gtag_app/screen/homepage.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getPages(),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  _bottomNavigationBar() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ("Home")),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ("Profile")),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: ("Setting")),
      ],
      currentIndex: selectedPage,
      onTap: (tappedPage) {
        setState(() {
          selectedPage = tappedPage;
        });
      },
    );
  }

  _getPages() {
    switch (selectedPage) {
      case 0:
        return HomePage();
      case 1:
        return ProfilePageTwo();
      case 2:
        return SettingPage();
    }
  }
}
