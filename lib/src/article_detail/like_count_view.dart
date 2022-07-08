import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../liked_count_view.dart' as shared;
import '../liked_notifier.dart';

final likedCountStateProvider =
    StateProvider.autoDispose.family<int, int>((ref, count) => count);

class LikeCountView extends ConsumerStatefulWidget {
  final int _initialCount;

  const LikeCountView(int count, {Key? key})
      : _initialCount = count,
        super(key: key);

  @override
  LikeCountViewState createState() => LikeCountViewState();
}

class LikeCountViewState extends ConsumerState<LikeCountView> {
  StreamSubscription? _subscription;

  AutoDisposeStateProvider<int> get _stateProvider =>
      likedCountStateProvider(widget._initialCount);

  @override
  void initState() {
    super.initState();

    _subscription =
        ref.read(likedNotifierProvider).notifications.listen((isLiked) {
      final notifier = ref.read(_stateProvider.notifier);
      isLiked ? notifier.state++ : notifier.state--;
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final count = ref.watch(_stateProvider);
    return shared.LikedCountView(count);
  }
}
