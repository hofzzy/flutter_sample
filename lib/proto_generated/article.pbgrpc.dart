///
//  Generated code. Do not modify.
//  source: article.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'article.pb.dart' as $0;
export 'article.pb.dart';

class ArticleServiceClient extends $grpc.Client {
  static final _$listArticles =
      $grpc.ClientMethod<$0.ListArticlesRequest, $0.ListArticlesResponse>(
          '/flutter_sample.ArticleService/ListArticles',
          ($0.ListArticlesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListArticlesResponse.fromBuffer(value));
  static final _$likeArticle =
      $grpc.ClientMethod<$0.LikeArticleRequest, $0.LikeArticleResponse>(
          '/flutter_sample.ArticleService/LikeArticle',
          ($0.LikeArticleRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.LikeArticleResponse.fromBuffer(value));

  ArticleServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ListArticlesResponse> listArticles(
      $0.ListArticlesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listArticles, request, options: options);
  }

  $grpc.ResponseFuture<$0.LikeArticleResponse> likeArticle(
      $0.LikeArticleRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$likeArticle, request, options: options);
  }
}

abstract class ArticleServiceBase extends $grpc.Service {
  $core.String get $name => 'flutter_sample.ArticleService';

  ArticleServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.ListArticlesRequest, $0.ListArticlesResponse>(
            'ListArticles',
            listArticles_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ListArticlesRequest.fromBuffer(value),
            ($0.ListArticlesResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.LikeArticleRequest, $0.LikeArticleResponse>(
            'LikeArticle',
            likeArticle_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.LikeArticleRequest.fromBuffer(value),
            ($0.LikeArticleResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListArticlesResponse> listArticles_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListArticlesRequest> request) async {
    return listArticles(call, await request);
  }

  $async.Future<$0.LikeArticleResponse> likeArticle_Pre($grpc.ServiceCall call,
      $async.Future<$0.LikeArticleRequest> request) async {
    return likeArticle(call, await request);
  }

  $async.Future<$0.ListArticlesResponse> listArticles(
      $grpc.ServiceCall call, $0.ListArticlesRequest request);
  $async.Future<$0.LikeArticleResponse> likeArticle(
      $grpc.ServiceCall call, $0.LikeArticleRequest request);
}
