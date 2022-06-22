import 'package:flutter/material.dart';

class NewsUI extends StatelessWidget {
  const NewsUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color bgColor = Color(0xffF3F3F3);

    return SafeArea(
      child: Scaffold(
        body:
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/logo_bfc.png', height: 100, width: 100,),
                      ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Liverpool",style: TextStyle(
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
                ],
              )
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
