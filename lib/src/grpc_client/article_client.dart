import '../../proto_generated/article.pbgrpc.dart' as pb;
import '../article.dart';
import 'grpc_client.dart';
import 'grpc_config.dart';

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
    final response = await client.listArticles(request);
    return response.articles
        .map((e) => Article(e.id, e.title, e.body, e.likedCount))
        .toList();
  }

  Future<void> likeArticle() async {
    final request = pb.LikeArticleRequest();
    await client.likeArticle(request);
  }
}
