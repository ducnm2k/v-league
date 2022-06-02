import 'package:flutter/material.dart';


import 'compoment/appbar.dart';
import 'compoment/body.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  static String routeName = "/home";
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    switch (_index) {
      case 0:
        break;
      case 1:
        break;
      case 2:
        break;
      case 3:
        break;
      case 4:
        break;
      case 5:
        break;
      case 6:
        break;
    }
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
          ),
          //_onTap function
          body: Body(),
        )
    );
  }
}
