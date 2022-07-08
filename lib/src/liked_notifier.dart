import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final likedNotifierProvider = Provider<LikedNotifier>((ref) {
  final likedNotifier = LikedNotifier();
  ref.onDispose(() => likedNotifier.dispose());
  return likedNotifier;
});

class LikedNotifier {
  final _controller = StreamController<bool>.broadcast();

  Sink<bool> get notification => _controller.sink;
  Stream<bool> get notifications => _controller.stream.asBroadcastStream();

  Future<void> dispose() => _controller.close();
}
