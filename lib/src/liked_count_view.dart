import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final likeCountModelProvider =
    Provider<LikeCountModel>((ref) => LikeCountModel());

class LikeCountModel {
  String getDisplayCount(int count) {
    if (count < 1000) {
      return count.toString();
    }
    final displayCount = (count / 1000).toStringAsFixed(1); // e.g. 1230 -> 1.2
    return '${displayCount}k';
  }
}

class LikedCountView extends ConsumerWidget {
  final int _count;

  const LikedCountView(int count, {Key? key})
      : _count = count,
        super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.read(likeCountModelProvider);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(Icons.favorite, size: 18),
        const SizedBox(width: 4),
        Text(
          model.getDisplayCount(_count),
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}
