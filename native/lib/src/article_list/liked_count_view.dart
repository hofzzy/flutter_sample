import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../article_detail/liked_notifier.dart';
import '../widget/liked_count_view.dart' as shared;

final _articleIdProvider = Provider<String>((ref) {
  throw UnimplementedError();
});

final _likedCountStateProvider = StateProvider.autoDispose<int>((ref) {
  throw UnimplementedError();
});

class LikedCountView extends ConsumerStatefulWidget {
  static ProviderScope create(String articleId, int likedCount) {
    return ProviderScope(
      overrides: [
        _articleIdProvider.overrideWithValue(articleId),
        _likedCountStateProvider.overrideWithValue(StateController(likedCount)),
      ],
      child: const LikedCountView._(),
    );
  }

  const LikedCountView._({Key? key}) : super(key: key);

  @override
  LikeCountViewState createState() => LikeCountViewState();
}

class LikeCountViewState extends ConsumerState<LikedCountView> {
  StreamSubscription? _subscription;

  @override
  void initState() {
    super.initState();

    _subscription = ref
        .read(likedRequestSucceededNotifierProvider)
        .notifications
        .listen((likedArticle) {
      final notifier = ref.read(_likedCountStateProvider.notifier);
      final articleId = ref.read(_articleIdProvider);
      if (articleId == likedArticle.id) {
        likedArticle.isLiked ? notifier.state++ : notifier.state--;
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
    final count = ref.watch(_likedCountStateProvider);
    return shared.LikedCountView(count);
  }
}
