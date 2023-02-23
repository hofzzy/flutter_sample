import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../article.dart';
import '../dialog.dart';
import '../grpc_client/article_client.dart';
import '../grpc_client/network_exception.dart';
import 'like_icon_button.dart';
import 'liked_count_view.dart';
import 'liked_notifier.dart';

final _selectedArticleId = Provider<String>((ref) {
  throw UnimplementedError();
});

final fetchArticle =
    FutureProvider.autoDispose.family<Article, String>((ref, id) {
  final articleClient = ref.read(articleClientProvider);
  return articleClient.getArticle(id);
});

class ArticleDetailScreen extends ConsumerStatefulWidget {
  static const routeName = 'article_detail';

  static ProviderScope create(ArticleDetailArgument argument) {
    return ProviderScope(
      overrides: [_selectedArticleId.overrideWithValue(argument.articleId)],
      child: ArticleDetailScreen._(
        onLikeRequestComplete: argument.onLikeRequestComplete,
      ),
    );
  }

  /// いいねリクエスト完了後に呼び出される Callback
  ///
  /// Provider 経由で渡すと、リクエストが完了する前に画面を離れた場合などにおいて、実行時に例外が発生してしまう
  /// そのため、State が破棄された後でも実行できるよう Widget で保持するようにしている
  final Function(bool)? _onLikeRequestComplete;

  const ArticleDetailScreen._({Function(bool)? onLikeRequestComplete, Key? key})
      : _onLikeRequestComplete = onLikeRequestComplete,
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
        final articleId = ref.read(_selectedArticleId);
        await articleClient.likeArticle(articleId, isLiked);
        widget._onLikeRequestComplete?.call(isLiked);
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
    final articleId = ref.watch(_selectedArticleId);
    final article = ref.watch(fetchArticle(articleId));

    return Scaffold(
      appBar: AppBar(
        actions: article.when(
          data: (article) => [LikeIconButton.create(article.isLiked)],
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
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    const SizedBox(width: 8),
                    LikedCountView.create(article.likedCount),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  article.body,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
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
class ArticleDetailArgument {
  final String articleId;
  final Function(bool)? onLikeRequestComplete;

  const ArticleDetailArgument(this.articleId, {this.onLikeRequestComplete});
}
