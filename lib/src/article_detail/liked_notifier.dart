import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final likedNotifierProvider = Provider<LikedNotifier>((ref) {
  final likedNotifier = LikedNotifier();
  ref.onDispose(() => likedNotifier.dispose());
  return likedNotifier;
});

final likedRequestSucceededNotifierProvider =
    Provider<LikedRequestSucceededNotifier>((ref) {
  final likedRequestSucceededNotifier = LikedRequestSucceededNotifier();
  ref.onDispose(() => likedRequestSucceededNotifier.dispose());
  return likedRequestSucceededNotifier;
});

class LikedNotifier {
  final _controller = StreamController<bool>.broadcast();

  Sink<bool> get notification => _controller.sink;
  Stream<bool> get notifications => _controller.stream.asBroadcastStream();

  Future<void> dispose() => _controller.close();
}

class LikedRequestSucceededNotifier {
  final _controller = StreamController<LikedArticle>.broadcast();

  Sink<LikedArticle> get notification => _controller.sink;
  Stream<LikedArticle> get notifications =>
      _controller.stream.asBroadcastStream();

  Future<void> dispose() => _controller.close();
}

@immutable
class LikedArticle {
  final String id;
  final bool isLiked;

  const LikedArticle(this.id, this.isLiked);
}
