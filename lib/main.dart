import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedTab,
          onTap: (index) => setState(() => _selectedTab = index),
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('svg/character_24px_selected.svg'),
              label: 'Персонажи',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('svg/location_24px.svg'),
              label: 'Локациии',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('svg/episode.svg'),
              label: 'Эпизоды',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('svg/prizrak.svg'),
              label: 'Настройки',
            ),
          ],
          // onTap: onSelectedTab,
        ),
      ),
    );
  }
}
