///
//  Generated code. Do not modify.
//  source: article.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use articleDescriptor instead')
const Article$json = const {
  '1': 'Article',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'body', '3': 3, '4': 1, '5': 9, '10': 'body'},
    const {'1': 'liked_count', '3': 4, '4': 1, '5': 5, '10': 'likedCount'},
    const {'1': 'liked', '3': 5, '4': 1, '5': 8, '10': 'liked'},
  ],
};

/// Descriptor for `Article`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List articleDescriptor = $convert.base64Decode('CgdBcnRpY2xlEg4KAmlkGAEgASgJUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSEgoEYm9keRgDIAEoCVIEYm9keRIfCgtsaWtlZF9jb3VudBgEIAEoBVIKbGlrZWRDb3VudBIUCgVsaWtlZBgFIAEoCFIFbGlrZWQ=');
@$core.Deprecated('Use listArticlesRequestDescriptor instead')
const ListArticlesRequest$json = const {
  '1': 'ListArticlesRequest',
};

/// Descriptor for `ListArticlesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listArticlesRequestDescriptor = $convert.base64Decode('ChNMaXN0QXJ0aWNsZXNSZXF1ZXN0');
@$core.Deprecated('Use listArticlesResponseDescriptor instead')
const ListArticlesResponse$json = const {
  '1': 'ListArticlesResponse',
  '2': const [
    const {'1': 'articles', '3': 1, '4': 3, '5': 11, '6': '.flutter_sample.Article', '10': 'articles'},
  ],
};

/// Descriptor for `ListArticlesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listArticlesResponseDescriptor = $convert.base64Decode('ChRMaXN0QXJ0aWNsZXNSZXNwb25zZRIzCghhcnRpY2xlcxgBIAMoCzIXLmZsdXR0ZXJfc2FtcGxlLkFydGljbGVSCGFydGljbGVz');
@$core.Deprecated('Use getArticleRequestDescriptor instead')
const GetArticleRequest$json = const {
  '1': 'GetArticleRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetArticleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getArticleRequestDescriptor = $convert.base64Decode('ChFHZXRBcnRpY2xlUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use getArticleResponseDescriptor instead')
const GetArticleResponse$json = const {
  '1': 'GetArticleResponse',
  '2': const [
    const {'1': 'article', '3': 1, '4': 1, '5': 11, '6': '.flutter_sample.Article', '10': 'article'},
  ],
};

/// Descriptor for `GetArticleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getArticleResponseDescriptor = $convert.base64Decode('ChJHZXRBcnRpY2xlUmVzcG9uc2USMQoHYXJ0aWNsZRgBIAEoCzIXLmZsdXR0ZXJfc2FtcGxlLkFydGljbGVSB2FydGljbGU=');
@$core.Deprecated('Use likeArticleRequestDescriptor instead')
const LikeArticleRequest$json = const {
  '1': 'LikeArticleRequest',
  '2': const [
    const {'1': 'article_id', '3': 1, '4': 1, '5': 9, '10': 'articleId'},
    const {'1': 'liked', '3': 2, '4': 1, '5': 8, '10': 'liked'},
  ],
};

/// Descriptor for `LikeArticleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List likeArticleRequestDescriptor = $convert.base64Decode('ChJMaWtlQXJ0aWNsZVJlcXVlc3QSHQoKYXJ0aWNsZV9pZBgBIAEoCVIJYXJ0aWNsZUlkEhQKBWxpa2VkGAIgASgIUgVsaWtlZA==');
@$core.Deprecated('Use likeArticleResponseDescriptor instead')
const LikeArticleResponse$json = const {
  '1': 'LikeArticleResponse',
};

/// Descriptor for `LikeArticleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List likeArticleResponseDescriptor = $convert.base64Decode('ChNMaWtlQXJ0aWNsZVJlc3BvbnNl');
