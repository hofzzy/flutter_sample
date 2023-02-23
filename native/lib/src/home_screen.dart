import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'article_list/article_list_screen.dart';
import 'liked_article_list/liked_article_list_screen.dart';

final selectedIndexProvider = StateProvider<int>((ref) => 0);

final pageControllerProvider =
    Provider<PageController>((ref) => PageController(initialPage: 0));

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends ConsumerState<HomeScreen> {
  @override
  void dispose() {
    ref.read(pageControllerProvider).dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex = ref.watch(selectedIndexProvider);
    final pageController = ref.watch(pageControllerProvider);
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          ArticleListScreen(),
          LikedArticleListScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'home',
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'favorite',
            icon: Icon(Icons.favorite_outline),
            activeIcon: Icon(Icons.favorite),
          ),
        ],
        currentIndex: selectedIndex,
        onTap: (index) async {
          ref.read(selectedIndexProvider.notifier).state = index;
          ref.read(pageControllerProvider).jumpToPage(index);
        },
      ),
    );
  }
}
