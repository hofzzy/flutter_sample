import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'article_detail/article_detail_screen.dart';
import 'home_screen.dart';

final routerProvider = Provider((ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        name: ArticleDetailScreen.routeName,
        path: '/article/:id',
        builder: (context, state) {
          final args = ArticleDetailArgument.fromParams(state.params);
          return ArticleDetailScreen(args.articleId);
        },
      ),
    ],
  );
});

@immutable
abstract class RouteParameter {
  Map<String, String> toParams();
}
