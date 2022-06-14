import 'package:cafe_list/screen/home_screen.dart';
import 'package:flutter/material.dart';

enum Routes {
  home, // 홈 화면
}

extension routesExtension on Routes {
  Widget get route {
    switch(this) {
      case Routes.home:
        return HomeScreen();
    }
  }
}