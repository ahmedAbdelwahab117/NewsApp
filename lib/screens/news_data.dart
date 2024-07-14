import 'package:flutter/material.dart';

import 'package:news/utils/app_color.dart';

class NewsData extends StatelessWidget {
  const NewsData(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});
  final String? image;
  final String title;
  final String? subtitle;
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
              'Data',
              style: TextStyle(
                  color: AppColors.orange, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(image ??
                  'https://cdn3.iconfinder.com/data/icons/files-folders-2/30/file_text_document_page_paper-broken-damaged-128.png'),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              title,
              overflow: TextOverflow.ellipsis,
              maxLines: 20,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              subtitle ?? '',
              maxLines: 20,
              overflow: TextOverflow.ellipsis,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: AppColors.grey),
            )
          ],
        ),
      ),
    );
  }
}
