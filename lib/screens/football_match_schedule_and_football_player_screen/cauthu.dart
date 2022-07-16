import 'package:flutter/material.dart';

class CauThu extends StatelessWidget {
  const CauThu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            "Đội hình",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.normal,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              child: Row(
            children: [
              Image.asset(
                "assets/images/quanghai.jpg",
                height: 80,
                width: 80,
              ),
              Text("Quang Hải",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              SizedBox(width: 85,),
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
            ],
          ),
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
                    Container(
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/quanghai.jpg",
                            height: 80,
                            width: 80,
                          ),
                          Text("Quang Hải",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(width: 85,),
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
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Text(
            "Dự bị",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.normal,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Row(
              children: [
                Image.asset(
                  "assets/images/quanghai.jpg",
                  height: 80,
                  width: 80,
                ),
                Text("Quang Hải",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                SizedBox(width: 85,),
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
              ],
            ),
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
                    Container(
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/quanghai.jpg",
                            height: 80,
                            width: 80,
                          ),
                          Text("Quang Hải",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(width: 85,),
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
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
