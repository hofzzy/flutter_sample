///
//  Generated code. Do not modify.
//  source: article.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Article extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Article', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flutter_sample'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'likedCount', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Article._() : super();
  factory Article({
    $core.String? id,
    $core.String? title,
    $core.String? body,
    $core.int? likedCount,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (title != null) {
      _result.title = title;
    }
    if (body != null) {
      _result.body = body;
    }
    if (likedCount != null) {
      _result.likedCount = likedCount;
    }
    return _result;
  }
  factory Article.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Article.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Article clone() => Article()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Article copyWith(void Function(Article) updates) => super.copyWith((message) => updates(message as Article)) as Article; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Article create() => Article._();
  Article createEmptyInstance() => create();
  static $pb.PbList<Article> createRepeated() => $pb.PbList<Article>();
  @$core.pragma('dart2js:noInline')
  static Article getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Article>(create);
  static Article? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get body => $_getSZ(2);
  @$pb.TagNumber(3)
  set body($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBody() => $_has(2);
  @$pb.TagNumber(3)
  void clearBody() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get likedCount => $_getIZ(3);
  @$pb.TagNumber(4)
  set likedCount($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLikedCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearLikedCount() => clearField(4);
}

class ListArticlesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListArticlesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flutter_sample'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListArticlesRequest._() : super();
  factory ListArticlesRequest() => create();
  factory ListArticlesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListArticlesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListArticlesRequest clone() => ListArticlesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListArticlesRequest copyWith(void Function(ListArticlesRequest) updates) => super.copyWith((message) => updates(message as ListArticlesRequest)) as ListArticlesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListArticlesRequest create() => ListArticlesRequest._();
  ListArticlesRequest createEmptyInstance() => create();
  static $pb.PbList<ListArticlesRequest> createRepeated() => $pb.PbList<ListArticlesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListArticlesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListArticlesRequest>(create);
  static ListArticlesRequest? _defaultInstance;
}

class ListArticlesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListArticlesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flutter_sample'), createEmptyInstance: create)
    ..pc<Article>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'articles', $pb.PbFieldType.PM, subBuilder: Article.create)
    ..hasRequiredFields = false
  ;

  ListArticlesResponse._() : super();
  factory ListArticlesResponse({
    $core.Iterable<Article>? articles,
  }) {
    final _result = create();
    if (articles != null) {
      _result.articles.addAll(articles);
    }
    return _result;
  }
  factory ListArticlesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListArticlesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListArticlesResponse clone() => ListArticlesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListArticlesResponse copyWith(void Function(ListArticlesResponse) updates) => super.copyWith((message) => updates(message as ListArticlesResponse)) as ListArticlesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListArticlesResponse create() => ListArticlesResponse._();
  ListArticlesResponse createEmptyInstance() => create();
  static $pb.PbList<ListArticlesResponse> createRepeated() => $pb.PbList<ListArticlesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListArticlesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListArticlesResponse>(create);
  static ListArticlesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Article> get articles => $_getList(0);
}

class GetArticleRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetArticleRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flutter_sample'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetArticleRequest._() : super();
  factory GetArticleRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetArticleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetArticleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetArticleRequest clone() => GetArticleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetArticleRequest copyWith(void Function(GetArticleRequest) updates) => super.copyWith((message) => updates(message as GetArticleRequest)) as GetArticleRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetArticleRequest create() => GetArticleRequest._();
  GetArticleRequest createEmptyInstance() => create();
  static $pb.PbList<GetArticleRequest> createRepeated() => $pb.PbList<GetArticleRequest>();
  @$core.pragma('dart2js:noInline')
  static GetArticleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetArticleRequest>(create);
  static GetArticleRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetArticleResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetArticleResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flutter_sample'), createEmptyInstance: create)
    ..aOM<Article>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'article', subBuilder: Article.create)
    ..hasRequiredFields = false
  ;

  GetArticleResponse._() : super();
  factory GetArticleResponse({
    Article? article,
  }) {
    final _result = create();
    if (article != null) {
      _result.article = article;
    }
    return _result;
  }
  factory GetArticleResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetArticleResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetArticleResponse clone() => GetArticleResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetArticleResponse copyWith(void Function(GetArticleResponse) updates) => super.copyWith((message) => updates(message as GetArticleResponse)) as GetArticleResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetArticleResponse create() => GetArticleResponse._();
  GetArticleResponse createEmptyInstance() => create();
  static $pb.PbList<GetArticleResponse> createRepeated() => $pb.PbList<GetArticleResponse>();
  @$core.pragma('dart2js:noInline')
  static GetArticleResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetArticleResponse>(create);
  static GetArticleResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Article get article => $_getN(0);
  @$pb.TagNumber(1)
  set article(Article v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasArticle() => $_has(0);
  @$pb.TagNumber(1)
  void clearArticle() => clearField(1);
  @$pb.TagNumber(1)
  Article ensureArticle() => $_ensure(0);
}

class LikeArticleRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LikeArticleRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flutter_sample'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'articleId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  LikeArticleRequest._() : super();
  factory LikeArticleRequest({
    $core.int? articleId,
  }) {
    final _result = create();
    if (articleId != null) {
      _result.articleId = articleId;
    }
    return _result;
  }
  factory LikeArticleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LikeArticleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LikeArticleRequest clone() => LikeArticleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LikeArticleRequest copyWith(void Function(LikeArticleRequest) updates) => super.copyWith((message) => updates(message as LikeArticleRequest)) as LikeArticleRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LikeArticleRequest create() => LikeArticleRequest._();
  LikeArticleRequest createEmptyInstance() => create();
  static $pb.PbList<LikeArticleRequest> createRepeated() => $pb.PbList<LikeArticleRequest>();
  @$core.pragma('dart2js:noInline')
  static LikeArticleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LikeArticleRequest>(create);
  static LikeArticleRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get articleId => $_getIZ(0);
  @$pb.TagNumber(1)
  set articleId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasArticleId() => $_has(0);
  @$pb.TagNumber(1)
  void clearArticleId() => clearField(1);
}

class LikeArticleResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LikeArticleResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flutter_sample'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  LikeArticleResponse._() : super();
  factory LikeArticleResponse() => create();
  factory LikeArticleResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LikeArticleResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LikeArticleResponse clone() => LikeArticleResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LikeArticleResponse copyWith(void Function(LikeArticleResponse) updates) => super.copyWith((message) => updates(message as LikeArticleResponse)) as LikeArticleResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LikeArticleResponse create() => LikeArticleResponse._();
  LikeArticleResponse createEmptyInstance() => create();
  static $pb.PbList<LikeArticleResponse> createRepeated() => $pb.PbList<LikeArticleResponse>();
  @$core.pragma('dart2js:noInline')
  static LikeArticleResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LikeArticleResponse>(create);
  static LikeArticleResponse? _defaultInstance;
}

