import 'package:build_apps_test/features/home/data/datasources/remote_datasource.dart';
import 'package:build_apps_test/features/home/data/models/post_model.dart';
import 'package:get_it/get_it.dart';

class PostRepository {
  Future<List<PostModel>> getPosts() async {
    try {
      return await GetIt.I<RemoteDatasource>().getPosts();
    } catch (e) {
      rethrow;
    }
  }
}
