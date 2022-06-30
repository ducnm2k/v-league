import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'bodycontent.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  final ScrollController controllerOne = ScrollController();
  List<Map<String, String>> bodyImage = [
    {
      "image": "assets/images/sanbong.png",
    },
    {
      "image": "assets/images/sanbong_4.png",
    },
    {
      "image": "assets/images/sanbong_2.png",
    },
  ];
  List<Map<String, String>> bodyResult = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        child: Column(
          children: <Widget>[
            Expanded(
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: bodyImage.length,
                itemBuilder: (context, index) => BodyContent(
                  image: bodyImage[index]["image"].toString(),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: SingleChildScrollView(
                child: SizedBox(
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          bodyImage.length,
                          (index) => buildDot(index: index),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "11/12/2021",
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        "8:00PM",
                        style: TextStyle(color: Colors.green),
                      ),
                      //khoảng cách
                      SizedBox(
                        height: 30,
                      ),
                      //row xet tên 1 hang ngang
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('data'),
                          Image.asset('assets/images/logo_bfc.png', height: 50, width: 50,),
                          SizedBox(
                            width: 20,
                          ),
                          Text('0',
                          style: TextStyle( fontSize: 30),
                          ),
                          Text(':',
                            style: TextStyle( fontSize: 30),
                          ),
                          Text('0',
                            style: TextStyle( fontSize: 30),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset('assets/images/logo_bfc.png', height: 50, width: 50,),
                          Text('data'),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text('Lịch Thi Đấu',
                        style: TextStyle( fontSize: 40),
                      ),

                      
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildDot({required int index}) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 15 : 6,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
