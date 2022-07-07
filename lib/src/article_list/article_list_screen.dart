import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../article.dart';
import '../article_detail/article_detail_screen.dart';
import '../grpc_client/article_client.dart';
import '../grpc_client/network_exception.dart';
import '../liked_count_view.dart';

final fetchArticlesProvider = FutureProvider<List<Article>>((ref) async {
  final articleClient = ref.read(articleClientProvider);
  return articleClient.listArticles();
});

class ArticleListScreen extends ConsumerWidget {
  const ArticleListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final articles = ref.watch(fetchArticlesProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('記事一覧')),
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
