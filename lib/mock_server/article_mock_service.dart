import 'package:grpc/grpc.dart';

import '../proto_generated/article.pbgrpc.dart';
import 'shared/handle_common_pre_process.dart';

class ArticleMockService extends ArticleServiceBase {
  @override
  Future<ListArticlesResponse> listArticles(
      ServiceCall call, ListArticlesRequest request) async {
    await handleCommonPreProcess();
    return ListArticlesResponse(articles: articles);
  }

  @override
  Future<GetArticleResponse> getArticle(
      ServiceCall call, GetArticleRequest request) async {
    await handleCommonPreProcess();
    _validateGetArticleRequest();
    final article = articles.firstWhere((e) => e.id == request.id);
    return GetArticleResponse(article: article);
  }

  @override
  Future<LikeArticleResponse> likeArticle(
      ServiceCall call, LikeArticleRequest request) async {
    await handleCommonPreProcess();
    return LikeArticleResponse();
  }

  void _validateGetArticleRequest({bool debugNotFoundException = false}) {
    if (debugNotFoundException) {
      throw GrpcError.notFound('この記事は削除されました');
    }
  }

  final articles = [
    Article(
      id: '1',
      title: 'What’s new in Flutter 3',
      body:
          'It’s time again for a Flutter stable release — and we are incredibly proud to announce Flutter 3! Only three months ago, we announced Flutter support for Windows. Today, we are excited to announce that Flutter is now stable for macOS and Linux, in addition to Windows!\n\n'
          'We have several exciting things to announce as part of this release, including the update on Flutter’s support for macOS and Linux, significant performance improvements, mobile and web updates — and much more! In addition, we have news about reduction in support for older versions of Windows, and a short list of breaking changes. So, let’s get down to business!\n\n'
          'From the Flutter Team at Google, we say thank you for the awesome work the community has done to help Flutter maintain its status as the most popular cross-platform UI toolkit, as measured by analysts like Statista and SlashData. We look forward to working together as a community to continue to provide a community driven tool that helps create a delightful experience for the developers and users alike!',
      likedCount: 0,
    ),
    Article(
      id: '2',
      title: 'Introducing Flutter 3',
      body:
          'We’re delighted to announce the launch of Flutter 3 as part of the Google I/O keynote. Flutter 3 completes our roadmap from a mobile-centric to a multiplatform framework, with the availability of macOS and Linux desktop app support, along with improvements to Firebase integration, new productivity and performance features, and support for Apple Silicon.'
          'We started Flutter as an attempt to revolutionize app development: combining the iterative development model of the web with hardware-accelerated graphics rendering and pixel-level control that were previously the preserve of games. Over the last four years since Flutter 1.0 beta, we’ve gradually built on these foundations, adding new framework capabilities and new widgets, deeper integration with the underlying platforms, a rich library of packages and many performance and tooling improvements.'
          'As the product has matured, more of you have started to build apps with it. Today there are over 500,000 apps built with Flutter. Analytics from research firms like data.ai, along with public testimonials, show Flutter is used by a broad list of customers in many segments: from social apps like WeChat to finance and banking apps like Betterment and Nubank; from commerce apps like SHEIN and trip.com to lifestyle apps like Fastic and Tabcorp; from companion apps like My BMW to public institutions such as the Brazil government.',
      likedCount: 3600,
    ),
    Article(
      id: '3',
      title: 'Flutter in 2022: strategy and roadmap',
      body:
          'Each year we, like other large teams at Google, go through a planning process to set our goals and areas of focus for the upcoming year.',
      likedCount: 618,
    ),
    Article(
      id: '4',
      title: 'What’s New in Flutter 2.10',
      body:
          'I can’t believe it’s time again for a Flutter stable release! Hello and welcome to Flutter 2.10.',
      likedCount: 4100,
    ),
    Article(
      id: '5',
      title: 'Announcing Flutter for Windows',
      body: 'Build high-quality Windows apps that also run on mobile and web',
      likedCount: 1200,
    ),
    Article(
      id: '6',
      title: 'What’s New in Flutter 2.8',
      body:
          'Performance improvements, new Firebase features, desktop status, tooling updates and more!',
      likedCount: 6100,
    ),
    Article(
      id: '7',
      title: 'Announcing Flutter 2.8',
      body: 'A new release of Flutter: and a look back on a year of growth',
      likedCount: 3900,
    ),
    Article(
      id: '8',
      title:
          'Announcing General Availability for the Google Mobile Ads SDK for Flutter',
      body:
          'There are many ways for apps to make money: accepting payments as a storefront for a physical business',
      likedCount: 986,
    ),
    Article(
      id: '9',
      title: 'Introducing the Flutter Meetup Network!',
      body:
          'The Flutter Meetup Network (FMN) is an international network of Meetup groups united by their enthusiasm for Flutter.',
      likedCount: 470,
    ),
    Article(
      id: '10',
      title: 'What’s new in Flutter 2.5',
      body:
          'Performance improvements, DevTools updates, new Material You support, a new app template, and more!',
      likedCount: 3700,
    ),
    Article(
      id: '11',
      title: 'Writing a good code sample',
      body:
          'Authoring a good code sample is hard. Let me clarify that, putting together a sample that demonstrates the usage of an API',
      likedCount: 2100,
    ),
    Article(
      id: '12',
      title: 'Flutter: What’s next on the Web?',
      body:
          'Our priorities for upcoming releases, focusing on performance, developer experience and web integration',
      likedCount: 1900,
    ),
  ];
}
