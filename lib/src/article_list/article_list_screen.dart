import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../article.dart';
import '../article_detail/article_detail_screen.dart';
import '../article_detail/liked_notifier.dart';
import '../grpc_client/article_client.dart';
import '../grpc_client/network_exception.dart';
import '../liked_count_view.dart';

final fetchArticlesProvider = FutureProvider<List<Article>>((ref) async {
  final articleClient = ref.read(articleClientProvider);
  return articleClient.listArticles();
});

class ArticleListScreen extends ConsumerStatefulWidget {
  const ArticleListScreen({Key? key}) : super(key: key);

  @override
  ArticleListState createState() => ArticleListState();
}

class ArticleListState extends ConsumerState<ArticleListScreen>
    with AutomaticKeepAliveClientMixin {
  StreamSubscription? _subscription;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();

    _subscription = ref
        .read(likedRequestSucceededNotifierProvider)
        .notifications
        .listen((_) {
      ref.refresh(fetchArticlesProvider);
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final articles = ref.watch(fetchArticlesProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Latest'), centerTitle: false),
      body: articles.when(
        data: (articles) {
          return ListView.builder(
            itemBuilder: (_, index) {
              final article = articles[index];
              return ListTile(
                title: Text(article.title, maxLines: 1),
                subtitle: Text(article.body, maxLines: 1),
                trailing: LikedCountView(article.likedCount),
                onTap: () {
                  context.pushNamed(
                    ArticleDetailScreen.routeName,
                    params: ArticleDetailArgument(article.id).toParams(),
                  );
                },
              );
            },
            itemCount: articles.length,
          );
        },
        error: (error, _) {
          if (error is NetworkException) {
            return Text(error.message);
          }
          return Text(error.toString());
        },
        loading: () {
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
