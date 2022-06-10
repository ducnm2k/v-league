import 'package:flutter/material.dart';

import 'screens/home_screen/home.dart';
import 'screens/player_stat_screen/player_stat.dart';
import 'screens/profile_screen/profilepage.dart';


class FooterBar extends StatefulWidget {
  const FooterBar({Key? key}) : super(key: key);

  @override
  State<FooterBar> createState() => _FooterBarState();
}

class _FooterBarState extends State<FooterBar> {
  int _selectedIndex = 0;
  final List _children = [
    HomeScreen(),
    ProfilePage(),
    PlayerStatisticScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _children[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.green.shade800,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance),
              label: 'Trang Chủ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'Lịch Thi Đấu',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.transcribe),
              label: 'Bảng Điểm',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.inbox_sharp),
              label: 'Câu lạc Bộ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Hồ Sơ',
            ),
          ],
        ),
      ),
    );
  }
}
