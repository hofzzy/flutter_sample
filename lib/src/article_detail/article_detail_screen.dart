import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../article.dart';
import '../dialog.dart';
import '../grpc_client/article_client.dart';
import '../grpc_client/network_exception.dart';
import '../router.dart';
import 'like_count_view.dart';
import 'like_icon_button.dart';
import 'liked_notifier.dart';

final fetchArticle =
    FutureProvider.autoDispose.family<Article, String>((ref, id) {
  final articleClient = ref.read(articleClientProvider);
  return articleClient.getArticle(id);
});

class ArticleDetailScreen extends ConsumerStatefulWidget {
  static const routeName = 'article_detail';

  final String _articleId;

  const ArticleDetailScreen(String articleId, {Key? key})
      : _articleId = articleId,
        super(key: key);

  @override
  ArticleDetailState createState() => ArticleDetailState();
}

class ArticleDetailState extends ConsumerState<ArticleDetailScreen> {
  StreamSubscription? _subscription;

  @override
  void initState() {
    super.initState();

    _subscription =
        ref.read(likedNotifierProvider).notifications.listen((isLiked) async {
      final articleClient = ref.read(articleClientProvider);
      try {
        await articleClient.likeArticle(widget._articleId, isLiked);
        ref.read(likedRequestSucceededNotifierProvider).notification.add(null);
      } on NetworkException catch (e) {
        showSimpleDialog(context, title: 'いいねに失敗しました', body: e.message);
      }
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final fetchArticleProvider = fetchArticle(widget._articleId);
    final article = ref.watch(fetchArticleProvider);

    return Scaffold(
      appBar: AppBar(
        actions: article.when(
          data: (article) => [LikeIconButton(article.isLiked)],
          error: (error, _) => [],
          loading: () => [],
        ),
      ),
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
                    LikeCountView(article.likedCount),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  article.body,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(height: 1.4),
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
