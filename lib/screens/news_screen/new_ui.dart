import 'package:flutter/material.dart';

class NewsUI extends StatelessWidget {
  const NewsUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body:
        Card(
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Stack(
            children: <Widget>[
              Container(
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),

              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/cuutuyenthu.jpg', height: 100, width: 100,),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Cựu tuyển thủ U23 Việt Nam có bến đỗ đầy bất ngờ sau khi chia tay ĐKVĐ V-League",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: <Widget>[
                        Text("Yesterday, 9:24 PM", style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0,
                        ),)
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/hungthan823.jpg', height: 100, width: 100,),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("'Hung thần' của U23 Thái Lan được thi đấu ở V-League",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        children: <Widget>[
                          Text("The day before, 9: 02 PM", style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0,
                          ),)
                        ],

                      )
                  ),
                ],

              ),
            ],
          ),
        ),



      ),

      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   automaticallyImplyLeading: false,
      //   title: Text("New Feed", style: TextStyle(
      //     color: Colors.black,
      //   fontSize: 30.0
      //   ),
      //   ),
      // actions: <Widget>[
      //   IconButton(
      //     color: Colors.black,
      //     icon: Icon(Icons.search),
      //     onPressed: () {  }
      //     ,)
      // ],
      // ),
      // body: ListView(
      //   padding: const EdgeInsets.all(16.0),
      //   children: <Widget>[
      //     ToggleButtons(
      //       borderRadius: BorderRadius.circular(10.0),
      //         children: <Widget>[
      //           Container(
      //             padding: const EdgeInsets.all(16.0),
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               mainAxisSize: MainAxisSize.min,
      //               children: <Widget>[
      //                 Icon(Icons.sports_basketball),
      //                 Text("Football"),
      //               ],
      //             ),
      //           )
      //         ],
      //         isSelected: [
      //           true,
      //           false,
      //         ],
      //       onPressed: (index){},
      //     ),
      //
      //   ],
      // ),
    );
  }
}
