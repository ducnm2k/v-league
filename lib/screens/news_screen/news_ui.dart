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

          var list = snapshot.data!.result;
          return ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Image.network(list.elementAt(index).thumbnailImageUrl),
                title: Text(list.elementAt(index).title, textAlign: TextAlign.start,),
                onTap:() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => NewsDetails()));
              },
              );
            },
            separatorBuilder: (BuildContext context, int index) => const Divider(),
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
