import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:v_leauge/screens/login_screen/compoment/login_screen.dart';

import 'compoment/appbar.dart';
import 'compoment/body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex =0;
  late final String tabItem;


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: buildAppBar(),
          bottomNavigationBar: BottomNavigationBar(
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
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.green.shade800,
            onTap: _onItemTapped,
          ),
          body: Body(),
        )
    );
  }
}