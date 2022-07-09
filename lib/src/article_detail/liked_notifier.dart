import 'dart:async';

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
  final _controller = StreamController<void>.broadcast();

  Sink<void> get notification => _controller.sink;
  Stream<void> get notifications => _controller.stream.asBroadcastStream();

  Future<void> dispose() => _controller.close();
}
