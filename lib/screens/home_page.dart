import 'package:flutter/material.dart';
import 'package:news/components/catigery_items.dart';
import 'package:news/components/getNewsArt.dart';
import 'package:news/models/catigeryModel.dart';
import 'package:news/utils/app_color.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<CatigeryModel> items = [
    CatigeryModel(image: 'assets/images/Capture113.PNG', text: 'business'),
    CatigeryModel(
        image: 'assets/images/entertaiment.avif', text: 'entertainment'),
    CatigeryModel(image: 'assets/images/Capture.PNG', text: 'sports'),
    CatigeryModel(image: 'assets/images/Capture01.PNG', text: 'general'),
    CatigeryModel(image: 'assets/images/science.avif', text: 'science'),
    CatigeryModel(image: 'assets/images/health.avif', text: 'health'),
    CatigeryModel(image: 'assets/images/technology.jpeg', text: 'technology')
  ];
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
                'News',
                style: TextStyle(
                    color: AppColors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                'Cloud',
                style: TextStyle(
                    color: AppColors.orange, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: false,
            slivers: [
              SliverToBoxAdapter(
                child: CatigeryItems(
                  items: items,
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              const NewsViewBuilder(
                catgory0: 'general',
              )
            ],
          ),
        )

        //  CatigeryItems(items: items),
        );
  }
}
