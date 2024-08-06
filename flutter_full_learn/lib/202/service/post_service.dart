import 'post_model.dart';
import 'package:dio/dio.dart';
import 'dart:io';

class PostService {
  late final Dio _dio;
  PostService()
      : _dio =
            Dio(BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/"));

  Future<bool> _addItemsToService(PostModel postmodel) async {
    final response = await _dio.post('posts', data: postmodel);

    return response.statusCode == HttpStatus.created;
  }

  Future<List<PostModel>?> fetchPostItemsAdvanced() async {
    final response =
        //get sadece post istediği için tüm url yapıştırmadık
        await _dio.get('posts');
    // bu kodu bekle ve suanki yorum satiri olan yere gecme demek

    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;

      if (_datas is List) {
        return _datas.map((e) => PostModel.fromJson(e)).toList();
      } else {
        return null;
      }
    }
  }
}
