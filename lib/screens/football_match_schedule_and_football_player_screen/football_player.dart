import 'package:flutter/material.dart';

class FootBallPlayer extends StatelessWidget {
  const FootBallPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Huấn Luyện Viên",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Row(
              children: [
                Container(
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/hlvpark.jpg",
                        height: 100,
                        width: 100,
                      ),
                      Container(
                        padding: EdgeInsets.only(),
                      ),

                      Text(
                        "Park Hang Seo",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "50-Huấn luyện viên",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                        ),
                      ),
                    ],
                  ),
                  //),
                ),
              ],
            ),
            //],
          ),
          //),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tiền Đạo",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Spacer(
                      flex: 6,
                    ),
                    Text(
                      "Ra sân",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Text(
                      "Bàn thắng",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Text(
                      "Kiến tạo",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            child: Row(
              children: [
                Image.asset(
                  "assets/images/quanghai.jpg",
                  height: 80,
                  width: 80,
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 2,
                    left: 2,
                    right: 2,
                  ),
                  child: Text(
                    "Quang Hải",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Text(
                  "3",
                  style: TextStyle(),
                ),
                Spacer(),
                Text("2"),
                Spacer(),
                Text("0"),
                Spacer(),
              ],
            ),
          ),
          SizedBox(height: 5,),
          Container(
            child: Row(
              children: [
                Image.asset(
                  "assets/images/22-TIẾN-LINH.jpg",
                  height: 80,
                  width: 80,
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 2,
                    left: 2,
                    right: 2,
                  ),
                  child: Text(
                    "Tiến Linh",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Text(
                  "3",
                  style: TextStyle(),
                ),
                Spacer(),
                Text("1"),
                Spacer(),
                Text("3"),
                Spacer(),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tiền Vệ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            child: Row(
              children: [
                Image.asset(
                  "assets/images/quanghai.jpg",
                  height: 80,
                  width: 80,
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 2,
                    left: 2,
                    right: 2,
                  ),
                  child: Text(
                    "Quang Hải",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Text(
                  "3",
                  style: TextStyle(),
                ),
                Spacer(),
                Text("2"),
                Spacer(),
                Text("0"),
                Spacer(),
              ],
            ),
          ),
          SizedBox(height: 5,),
          Container(
            child: Row(
              children: [
                Image.asset(
                  "assets/images/22-TIẾN-LINH.jpg",
                  height: 80,
                  width: 80,
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 2,
                    left: 2,
                    right: 2,
                  ),
                  child: Text(
                    "Tiến Linh",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Text(
                  "3",
                  style: TextStyle(),
                ),
                Spacer(),
                Text("1"),
                Spacer(),
                Text("3"),
                Spacer(),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Thủ môn",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            child: Row(
              children: [
                Image.asset(
                  "assets/images/tieu-su-dang-van-lam.jpg",
                  height: 80,
                  width: 80,
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 2,
                    left: 2,
                    right: 2,
                  ),
                  child: Text(
                    "Văn Lâm",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Text(
                  "3",
                  style: TextStyle(),
                ),
                Spacer(),
                Text("2"),
                Spacer(),
                Text("0"),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
