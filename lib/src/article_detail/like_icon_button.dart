import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../liked_notifier.dart';

final likedStateProvider =
    StateProvider.autoDispose.family<bool, bool>((ref, isLiked) => isLiked);

class LikeIconButton extends ConsumerWidget {
  final bool _isLiked;

  const LikeIconButton(bool isLiked, {Key? key})
      : _isLiked = isLiked,
        super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateProvider = likedStateProvider(_isLiked);
    final isLiked = ref.watch(stateProvider);
    return IconButton(
      onPressed: () {
        ref.read(stateProvider.notifier).state = !isLiked;
        ref.read(likedNotifierProvider).notification.add(!isLiked);
      },
      icon: Icon(isLiked ? Icons.favorite : Icons.favorite_outline),
    );
  }
}
