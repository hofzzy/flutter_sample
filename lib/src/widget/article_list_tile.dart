import 'package:flutter/material.dart';

import '../article.dart';
import 'liked_count_view.dart';

class ArticleListTile extends StatelessWidget {
  final Article _article;
  final VoidCallback? _onTap;

  const ArticleListTile(Article article, {Key? key, VoidCallback? onTap})
      : _article = article,
        _onTap = onTap,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _onTap,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _article.title,
                    style: Theme.of(context).textTheme.subtitle2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    _article.body,
                    style: Theme.of(context).textTheme.bodyText2,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  // Text(_article.body, maxLines: 1),
                ],
              ),
            ),
            const SizedBox(width: 12),
            LikedCountView(_article.likedCount),
          ],
        ),
      ),
    );
  }
}
