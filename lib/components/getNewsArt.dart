import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/components/list_tile.dart';
import 'package:news/models/artical_model.dart';
import 'package:news/models/news_service.dart';

class NewsViewBuilder extends StatefulWidget {
  const NewsViewBuilder({super.key, required this.catgory0});
  final String catgory0;
  @override
  State<NewsViewBuilder> createState() => _NewsViewBuilderState();
}

class _NewsViewBuilderState extends State<NewsViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsModel(dio: Dio()).getData(category: widget.catgory0);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListTile0(
            articales: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverFillRemaining(
            child: Text('Oops there was an error , please try later'),
          );
        } else {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
