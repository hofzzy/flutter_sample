import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'liked_notifier.dart';

final _likedStateProvider = StateProvider.autoDispose<bool>((ref) {
  throw UnimplementedError();
});

class LikeIconButton extends ConsumerWidget {
  static ProviderScope create(bool isLiked) {
    return ProviderScope(
      overrides: [
        _likedStateProvider.overrideWithValue(StateController(isLiked)),
      ],
      child: const LikeIconButton._(),
    );
  }

  const LikeIconButton._({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLiked = ref.watch(_likedStateProvider);
    return IconButton(
      onPressed: () {
        ref.read(_likedStateProvider.notifier).state = !isLiked;
        ref.read(likedNotifierProvider).notification.add(!isLiked);
      },
      icon: Icon(isLiked ? Icons.favorite : Icons.favorite_outline),
    );
  }
}
