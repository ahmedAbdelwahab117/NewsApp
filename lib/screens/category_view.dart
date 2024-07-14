import 'package:flutter/material.dart';
import 'package:news/components/getNewsArt.dart';
import 'package:news/utils/app_color.dart';

class CarigeryView extends StatelessWidget {
  const CarigeryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              category,
              style: TextStyle(
                  color: AppColors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              'News',
              style: TextStyle(
                  color: AppColors.orange, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            NewsViewBuilder(
              catgory0: category,
            )
          ],
        ),
      ),
    );
  }
}
