import 'package:flutter/material.dart';
import 'package:insta_ui/pages/account.dart';
import 'package:insta_ui/pages/home.dart';
import 'package:insta_ui/pages/reels.dart';
import 'package:insta_ui/pages/search.dart';
import 'package:insta_ui/pages/shop.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //Navigate around bottom bar
  int selectedIndex = 0;
  void navigationItemTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> pages = [
    Home(),
    Search(),
    Reels(),
    Shop(),
    Account()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          selectedItemColor: Colors.black,
          onTap: navigationItemTap,
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.video_call),label: "Reels"),
            BottomNavigationBarItem(icon: Icon(Icons.shop),label: "Shop"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Account")
        ]
      ),
    );
  }
}
