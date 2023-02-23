import 'package:flutter/material.dart';

import '../article.dart';

class ArticleListTile extends StatelessWidget {
  final Article _article;
  final Widget? _trailing;
  final VoidCallback? _onTap;

  const ArticleListTile(Article article,
      {Key? key, Widget? trailing, VoidCallback? onTap})
      : _article = article,
        _trailing = trailing,
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
                    style: Theme.of(context).textTheme.titleSmall,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    _article.body,
                    style: Theme.of(context).textTheme.bodyMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  // Text(_article.body, maxLines: 1),
                ],
              ),
            ),
            if (_trailing != null)
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: _trailing,
              ),
          ],
        ),
      ),
    );
  }
}
