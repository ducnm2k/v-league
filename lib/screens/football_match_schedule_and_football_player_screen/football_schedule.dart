import 'package:flutter/material.dart';

class FootBallSchedule extends StatelessWidget {
  const FootBallSchedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Thang 2 2021",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "17 thg 1, 18:00",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Hồng Lĩnh",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            left: 5,
                            right: 5,
                          ),
                          child: Image.asset(
                            "assets/images/honglinh.png",
                            height: 38,
                            width: 38,
                          ),
                        ),
                        Text(
                          " 0-1 ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Image.asset(
                            "assets/images/haiphong.png",
                            height: 33,
                            width: 33,
                          ),
                        ),
                        Text(
                          "Hải Phòng",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.notifications_none_rounded,
                    size: 26,
                    color: Colors.black38,
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
            //   child: Row(
            //     children: <Widget>[
            //       Text(
            //         "V-League R1",
            //         style: TextStyle(
            //           color: Colors.grey,
            //           fontSize: 10.0,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "02 thg 2, 18:00",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Hải Phòng",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            left: 5,
                            right: 5,
                          ),
                          child: Image.asset(
                            "assets/images/haiphong.png",
                            height: 33,
                            width: 33,
                          ),
                        ),
                        Text(
                          " 1-1 ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Image.asset(
                            "assets/images/thanhhoa.jpg",
                            height: 33,
                            width: 33,
                          ),
                        ),
                        Text(
                          "Thanh Hóa",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.notifications,
                    size: 26,
                    color: Colors.amber,
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
            //   child: Row(
            //     children: <Widget>[
            //       Text(
            //         "V-League R3",
            //         style: TextStyle(
            //           color: Colors.grey,
            //           fontSize: 10.0,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "14 thg 2, 17:00",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Viettel",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            left: 5,
                            right: 5,
                          ),
                          child: Image.asset(
                            "assets/images/Logo-Viettel-FC-JPG.jpg",
                            height: 33,
                            width: 33,
                          ),
                        ),
                        Text(
                          " 1-1 ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Image.asset(
                            "assets/images/thanhhoa.jpg",
                            height: 33,
                            width: 33,
                          ),
                        ),
                        Text(
                          "Thanh Hóa",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.notifications,
                    size: 26,
                    color: Colors.amber,
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
            //   child: Row(
            //     children: <Widget>[
            //       Text(
            //         "Cúp Quốc Gia",
            //         style: TextStyle(
            //           color: Colors.grey,
            //           fontSize: 10.0,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            const SizedBox(
              height: 14.0,
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
                        "Thang 3 2021",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "02 thg 3, 18:00",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text(
                                "Hải Phòng",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  left: 5,
                                  right: 5,
                                ),
                                child: Image.asset(
                                  "assets/images/haiphong.png",
                                  height: 33,
                                  width: 33,
                                ),
                              ),
                              Text(
                                " 2-1 ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 5, right: 5),
                                child: Image.asset(
                                  "assets/images/namdinh.png",
                                  height: 33,
                                  width: 33,
                                ),
                              ),
                              Text(
                                "Nam Định",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.notifications_none_rounded,
                          size: 26,
                          color: Colors.black38,
                        ),
                      ],
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  //   child: Row(
                  //     children: <Widget>[
                  //       Text(
                  //         "V-League R2",
                  //         style: TextStyle(
                  //           color: Colors.grey,
                  //           fontSize: 10.0,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(top: 14),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "13 thg 3, 17:00",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text(
                                "Bình Dương",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  left: 5,
                                  right: 5,
                                ),
                                child: Image.asset(
                                  "assets/images/logo_bfc.png",
                                  height: 33,
                                  width: 33,
                                ),
                              ),
                              Text(
                                " 2-2 ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 5, right: 5),
                                child: Image.asset(
                                  "assets/images/haiphong.png",
                                  height: 33,
                                  width: 33,
                                ),
                              ),
                              Text(
                                "Hải Phòng",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.notifications,
                          size: 26,
                          color: Colors.amber,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
