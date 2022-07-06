import 'package:grpc/grpc.dart';

import '../proto_generated/article.pbgrpc.dart';
import 'shared/handle_common_pre_process.dart';

class ArticleMockService extends ArticleServiceBase {
  @override
  Future<ListArticlesResponse> listArticles(
      ServiceCall call, ListArticlesRequest request) async {
    await handleCommonPreProcess();
    return ListArticlesResponse(articles: [
      Article(id: '1', title: 'title', body: 'body', likedCount: 0),
    ]);
  }

  @override
  Future<LikeArticleResponse> likeArticle(
      ServiceCall call, LikeArticleRequest request) async {
    await handleCommonPreProcess();
    return LikeArticleResponse();
  }
}
