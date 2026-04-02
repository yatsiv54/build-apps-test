import 'package:build_apps_test/features/home/data/models/post_model.dart';
import 'package:dio/dio.dart';

class RemoteDatasource {
  final Dio dio;
  RemoteDatasource({required this.dio});

  Future<List<PostModel>> getPosts() async {
    try {
      final response = await dio.get('/posts');
      if (response.statusCode == 200) {
        return (response.data as List)
            .map((e) => PostModel.fromMap(e))
            .toList();
      } else {
        throw Exception('Помилка отримання даних');
      }
    } on DioException catch (e) {
      throw Exception('Помилка під час отримання даних $e');
    }
  }
}
