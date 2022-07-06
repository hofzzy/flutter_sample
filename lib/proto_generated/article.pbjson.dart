///
//  Generated code. Do not modify.
//  source: article.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

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
  ],
};

/// Descriptor for `Article`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List articleDescriptor = $convert.base64Decode('CgdBcnRpY2xlEg4KAmlkGAEgASgJUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSEgoEYm9keRgDIAEoCVIEYm9keRIfCgtsaWtlZF9jb3VudBgEIAEoBVIKbGlrZWRDb3VudA==');
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
@$core.Deprecated('Use likeArticleRequestDescriptor instead')
const LikeArticleRequest$json = const {
  '1': 'LikeArticleRequest',
  '2': const [
    const {'1': 'article_id', '3': 1, '4': 1, '5': 5, '10': 'articleId'},
  ],
};

/// Descriptor for `LikeArticleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List likeArticleRequestDescriptor = $convert.base64Decode('ChJMaWtlQXJ0aWNsZVJlcXVlc3QSHQoKYXJ0aWNsZV9pZBgBIAEoBVIJYXJ0aWNsZUlk');
@$core.Deprecated('Use likeArticleResponseDescriptor instead')
const LikeArticleResponse$json = const {
  '1': 'LikeArticleResponse',
};

/// Descriptor for `LikeArticleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List likeArticleResponseDescriptor = $convert.base64Decode('ChNMaWtlQXJ0aWNsZVJlc3BvbnNl');
