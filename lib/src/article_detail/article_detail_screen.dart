import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../article.dart';
import '../grpc_client/article_client.dart';
import '../grpc_client/network_exception.dart';
import '../liked_count_view.dart';
import '../router.dart';

final fetchArticle =
    FutureProvider.autoDispose.family<Article, String>((ref, id) {
  final articleClient = ref.read(articleClientProvider);
  return articleClient.getArticle(id);
});

class ArticleDetailScreen extends ConsumerWidget {
  static const routeName = 'artist_detail';

  final String _articleId;

  const ArticleDetailScreen(String articleId, {Key? key})
      : _articleId = articleId,
        super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final article = ref.watch(fetchArticle(_articleId));

    return Scaffold(
      appBar: AppBar(title: const Text('記事詳細')),
      body: article.when(
        data: (article) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        article.title,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    const SizedBox(width: 8),
                    LikedCountView(article.likedCount),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  article.body,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          );
        },
        error: (error, _) {
          if (error is NetworkException) {
            return Text(error.message);
          }
          return Text(error.toString());
        },
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

@immutable
class ArticleDetailArgument implements RouteParameter {
  static const _id = 'id';

  final String articleId;

  const ArticleDetailArgument(this.articleId);

  ArticleDetailArgument.fromParams(Map<String, String> params)
      : articleId = params[_id]!;

  @override
  Map<String, String> toParams() => {_id: articleId};
}
