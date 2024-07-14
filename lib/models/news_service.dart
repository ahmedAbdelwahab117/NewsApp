import 'package:dio/dio.dart';
import 'package:news/models/artical_model.dart';

class NewsModel {
  final Dio dio;

  NewsModel({required this.dio});
  Future<List<ArticalModel>> getData({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=5f78c487a4a6496f9d269c76288d0c3d&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articals = jsonData['articles'];
      List<ArticalModel> articalList = [];

      for (var artical in articals) {
        ArticalModel aritcal = ArticalModel(
            image: artical['urlToImage'],
            title: artical['title'],
            subTitle: artical['description']);
        articalList.add(aritcal);
      }
      return articalList;
    } catch (e) {
      return [];
    }
  }
}
