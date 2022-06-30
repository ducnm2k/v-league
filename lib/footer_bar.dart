import 'package:flutter/material.dart';
import 'package:v_leauge/screens/club_list_screen/clubs_list_screen.dart';
import 'package:v_leauge/screens/schedule_screen/schedule_screen.dart';


import 'screens/home_screen/home.dart';
import 'screens/player_stat_screen/player_stat.dart';


class FooterBar extends StatefulWidget {
  const FooterBar({Key? key}) : super(key: key);

  @override
  State<FooterBar> createState() => _FooterBarState();
}

class _FooterBarState extends State<FooterBar> {
  int _selectedIndex = 0;
  final List _children = [
    HomeScreen(),
    ScheduleScreen(),
    PlayerStatisticScreen(),
    ClubsListScreen(),
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
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.green,
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
          ],
        ),
      ),
    );
  }
}