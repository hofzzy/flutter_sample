import 'package:grpc/grpc.dart';

import '../proto_generated/article.pbgrpc.dart';

class ArticleMockService extends ArticleServiceBase {
  @override
  Future<ListArticlesResponse> listArticles(
      ServiceCall call, ListArticlesRequest request) async {
    return ListArticlesResponse(articles: []);
  }

  @override
  Future<LikeArticleResponse> likeArticle(
      ServiceCall call, LikeArticleRequest request) async {
    return LikeArticleResponse();
  }
}
