import 'package:flutter/material.dart';

class FootBallPlayer extends StatelessWidget {
  const FootBallPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/hlvpark.jpg",
                      height: 100,
                      width: 100,
                    ),
            Text(
              "Park Hang Seo",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
                      Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "50 - Huấn luyện viên",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
