import 'package:flutter/material.dart';

import 'app_theme.dart';
import 'article_detail/article_detail_screen.dart';
import 'home_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.defaultTheme,
      home: const HomeScreen(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case ArticleDetailScreen.routeName:
            final argument = settings.arguments as ArticleDetailArgument;
            return MaterialPageRoute(
                builder: (_) => ArticleDetailScreen.create(argument));
          default:
            throw ArgumentError('Need to implement ${settings.name}');
        }
      },
    );
  }
}
