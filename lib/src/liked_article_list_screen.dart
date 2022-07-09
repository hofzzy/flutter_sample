import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LikedArticleListScreen extends ConsumerStatefulWidget {
  const LikedArticleListScreen({Key? key}) : super(key: key);

  @override
  LikedArticleListState createState() => LikedArticleListState();
}

class LikedArticleListState extends ConsumerState<LikedArticleListScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Your favorites'), centerTitle: false),
      body: Container(),
    );
  }
}
