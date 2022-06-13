import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  int _currentIndex = 0;
  List<Widget> _tabBarBody = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.yellow,
    )
  ];

  // onTap 이벤트 리스너
  _onTabBarTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: _tabBarBody.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.visibility), label: '둘러보기'),
          BottomNavigationBarItem(
              icon: Icon(Icons.airplay), label: '커뮤니티'),
          BottomNavigationBarItem(
              icon: Icon(Icons.people), label: '마이페이지'),
        ],
        currentIndex: _currentIndex,
        onTap: _onTabBarTapped,
      ),
    );
  }
}
