import 'package:flutter/material.dart';

import 'article_list/article_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ArticleListScreen(),
    );
  }
}
