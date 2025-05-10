import '../models/post_model.dart';
import '../services/api_service.dart';

class PostRepository {
  final ApiService api;

  PostRepository(this.api);

  Future<List<PostModel>> fetchPosts({int start = 0, int limit = 5}) async {
    final response = await api.get('/posts?_start=$start&_limit=$limit');
    final List data = response as List;

    return data.map((json) => PostModel.fromJson(json)).toList();
  }
}
