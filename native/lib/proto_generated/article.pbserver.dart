///
//  Generated code. Do not modify.
//  source: article.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'article.pb.dart' as $0;
import 'article.pbjson.dart';

export 'article.pb.dart';

abstract class ArticleServiceBase extends $pb.GeneratedService {
  $async.Future<$0.ListArticlesResponse> listArticles($pb.ServerContext ctx, $0.ListArticlesRequest request);
  $async.Future<$0.GetArticleResponse> getArticle($pb.ServerContext ctx, $0.GetArticleRequest request);
  $async.Future<$0.ListLikedArticlesResponse> listLikedArticles($pb.ServerContext ctx, $0.ListLikedArticlesRequest request);
  $async.Future<$0.LikeArticleResponse> likeArticle($pb.ServerContext ctx, $0.LikeArticleRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'ListArticles': return $0.ListArticlesRequest();
      case 'GetArticle': return $0.GetArticleRequest();
      case 'ListLikedArticles': return $0.ListLikedArticlesRequest();
      case 'LikeArticle': return $0.LikeArticleRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'ListArticles': return this.listArticles(ctx, request as $0.ListArticlesRequest);
      case 'GetArticle': return this.getArticle(ctx, request as $0.GetArticleRequest);
      case 'ListLikedArticles': return this.listLikedArticles(ctx, request as $0.ListLikedArticlesRequest);
      case 'LikeArticle': return this.likeArticle(ctx, request as $0.LikeArticleRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => ArticleServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => ArticleServiceBase$messageJson;
}

