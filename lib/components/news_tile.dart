import 'package:flutter/material.dart';
import 'package:news/models/artical_model.dart';
import 'package:news/screens/news_data.dart';
import 'package:news/utils/app_color.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articale});
  final ArticalModel articale;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewsData(
              image: articale.image,
              title: articale.title,
              subtitle: articale.subTitle!,
            ),
          )),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              articale.image ??
                  'https://cdn3.iconfinder.com/data/icons/files-folders-2/30/file_text_document_page_paper-broken-damaged-128.png',
            ),
          ),
          Text(
            articale.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            articale.subTitle ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style:
                TextStyle(fontWeight: FontWeight.bold, color: AppColors.grey),
          )
        ],
      ),
    );
  }
}
