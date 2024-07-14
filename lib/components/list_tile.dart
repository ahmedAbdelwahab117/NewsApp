import 'package:flutter/material.dart';
import 'package:news/components/news_tile.dart';
import 'package:news/models/artical_model.dart';

class ListTile0 extends StatelessWidget {
  ListTile0({super.key, required this.articales});
  List<ArticalModel> articales = [];
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articales.length,
        (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: NewsTile(
            articale: articales[index],
          ),
        ),
      ),
    );
  }
}
