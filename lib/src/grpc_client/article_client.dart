import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../proto_generated/article.pbgrpc.dart' as pb;
import '../article.dart';
import '../config.dart';
import 'grpc_client.dart';
import 'grpc_config.dart';

final articleClientProvider = Provider<ArticleClient>((ref) {
  final config = ref.watch(localConfigProvider);
  return ArticleClient(grpcConfig: config.grpcConfig);
});

class ArticleClient extends GrpcClient<pb.ArticleServiceClient> {
  @override
  late final client = pb.ArticleServiceClient(
    channel,
    options: callOptions,
    interceptors: interceptors,
  );

  ArticleClient({required GrpcConfig grpcConfig})
      : super(grpcConfig: grpcConfig);

  Future<List<Article>> listArticles() async {
    final request = pb.ListArticlesRequest();
    return handleCommonError(() async {
      final response = await client.listArticles(request);
      return response.articles
          .map((e) => Article(e.id, e.title, e.body, e.likedCount, e.liked))
          .toList();
    });
  }

  Future<Article> getArticle(String id) async {
    final request = pb.GetArticleRequest(id: id);
    return handleCommonError(() async {
      final article = (await client.getArticle(request)).article;
      return Article(article.id, article.title, article.body,
          article.likedCount, article.liked);
    });
  }

  Future<void> likeArticle(String articleId, bool isLiked) async {
    final request = pb.LikeArticleRequest(articleId: articleId, liked: isLiked);
    return handleCommonError(() {
      return client.likeArticle(request);
    });
  }
}
