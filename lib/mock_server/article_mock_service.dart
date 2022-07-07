import 'package:grpc/grpc.dart';

import '../proto_generated/article.pbgrpc.dart';
import 'shared/handle_common_pre_process.dart';

class ArticleMockService extends ArticleServiceBase {
  final articles = [
    Article(id: '1', title: 'title', body: 'body', likedCount: 0),
  ];

  @override
  Future<ListArticlesResponse> listArticles(
      ServiceCall call, ListArticlesRequest request) async {
    await handleCommonPreProcess();
    return ListArticlesResponse(articles: articles);
  }

  @override
  Future<GetArticleResponse> getArticle(
      ServiceCall call, GetArticleRequest request) async {
    await handleCommonPreProcess();
    _validateGetArticleRequest();
    final article = articles.firstWhere((e) => e.id == request.id);
    return GetArticleResponse(article: article);
  }

  @override
  Future<LikeArticleResponse> likeArticle(
      ServiceCall call, LikeArticleRequest request) async {
    await handleCommonPreProcess();
    return LikeArticleResponse();
  }

  void _validateGetArticleRequest({bool debugNotFoundException = false}) {
    if (debugNotFoundException) {
      throw GrpcError.notFound('この記事は削除されました');
    }
  }
}
