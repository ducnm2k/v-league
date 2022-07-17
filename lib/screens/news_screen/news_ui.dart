import 'package:flutter/material.dart';
import 'package:v_leauge/network/api/model/new.model.dart';
import 'package:v_leauge/repositoty/implement/news.implement.dart';

import '../../network/api/model/pagination_model.dart';
import 'news_details.dart';

class NewsUI extends StatefulWidget {
  const NewsUI({Key? key}) : super(key: key);

  @override
  State<NewsUI> createState() => _NewsUIState();
}

class _NewsUIState extends State<NewsUI> {
  late Future<PaginationModel<NewsModel>> fetchNew;

  @override
  void initState() {
    super.initState();
    fetchNew =  NewImplement().getNews();
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
          return Container(
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NewsDetails()));
                },
                child: Column(
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
