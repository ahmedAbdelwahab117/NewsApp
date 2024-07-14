import 'package:flutter/material.dart';
import 'package:news/components/catigery.dart';
import 'package:news/models/catigeryModel.dart';

class CatigeryItems extends StatelessWidget {
  const CatigeryItems({
    super.key,
    required this.items,
  });

  final List<CatigeryModel> items;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      width: double.infinity,
      child: ListView.builder(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Catigery(
          item: items[index],
        ),
      ),
    );
  }
}
