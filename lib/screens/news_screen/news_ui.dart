import 'package:flutter/material.dart';
import 'package:v_leauge/network/api/model/new.model.dart';
import 'package:v_leauge/repositoty/implement/club.implement.dart';
import 'package:v_leauge/repositoty/implement/new.implement.dart';

import '../../network/api/model/club.model.dart';
import '../../network/api/model/pagination_model.dart';

class NewsUI extends StatefulWidget {
  const NewsUI({Key? key}) : super(key: key);

  @override
  State<NewsUI> createState() => _NewsUIState();
}

class _NewsUIState extends State<NewsUI> {
  late Future<PaginationModel<ClubModel>> fetchClub;
  late Future<PaginationModel<NewsModel>> fetchNew;

  @override
  void initState() {
    super.initState();
    fetchNew =  NewImplement().getNews();
    fetchClub = ClubImplement().getClubs();
  }
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PaginationModel<NewsModel>>(
      future: fetchNew ,
      builder: (context, snapshot){
        if(snapshot.hasData){
          return Scaffold(
            body: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Image.network(snapshot.data!.result[2].thumbnailImageUrl),
                SizedBox(
                  height: 10,
                ),
                Text(snapshot.data!.result[2].title, style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18,
                ),),
                SizedBox(
                  height: 10,
                ),
                Text(snapshot.data!.result[2].createdAt.toString()),
              ],

            ),
          );
        }
        else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        return const CircularProgressIndicator();
      }
    );
  }
}


// class NewsUI extends StatelessWidget {
//   const NewsUI({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return
//     Scaffold(
//       body: Card(
//         child: Stack(
//           children: <Widget>[
//             Column(
//               children: <Widget>[
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Image.asset(
//                       'assets/images/cuutuyenthu.jpg',
//                       height: 100,
//                       width: 350,
//                     ),
//                   ],
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(13.0),
//                   child: Text(
//                     "Cựu tuyển thủ U23 Việt Nam có bến đỗ đầy bất ngờ sau khi chia tay ĐKVĐ V-League",
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 18.0,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 13.0),
//                   child: Row(
//                     children: <Widget>[
//                       Text(
//                         "BONG DA",
//                         style: TextStyle(
//                           color: Colors.grey,
//                           fontSize: 12.0,
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 13.0),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Image.asset(
//                       'assets/images/hungthan823.jpg',
//                       height: 100,
//                       width: 350,
//                     ),
//                   ],
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Text(
//                     "'Hung thần' của U23 Thái Lan được thi đấu ở V-League",
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 18.0,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 13.0),
//                   child: Row(
//                     children: <Widget>[
//                       Text(
//                         "BONG DA",
//                         style: TextStyle(
//                           color: Colors.grey,
//                           fontSize: 12.0,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 13.0),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Image.asset(
//                       'assets/images/nguoihungu23.jpg',
//                       height: 100,
//                       width: 350,
//                     ),
//                   ],
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(13.0),
//                   child: Text(
//                     "'Người hùng U23 Việt Nam gãy xương sườn sau khi trở về từ VCK U23 châu Á 2022",
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 18.0,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 13.0),
//                   child: Row(
//                     children: <Widget>[
//                       Text(
//                         "BONG DA",
//                         style: TextStyle(
//                           color: Colors.grey,
//                           fontSize: 12.0,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//
//     );
//   }
// }
