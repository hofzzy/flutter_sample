import 'package:flutter/foundation.dart';

@immutable
abstract class NetworkException implements Exception {
  String get message;

  final Exception original;

  final StackTrace stackTrace;

  @override
  String toString() {
    return '[$runtimeType] {message: $message, original: $original, stackTrace: $stackTrace}';
  }

  @mustCallSuper
  const NetworkException(this.original, this.stackTrace);
}

class NotFoundException extends NetworkException {
  @override
  final String message;

  const NotFoundException(this.message, super.original, super.stackTrace);
}

class RequestTimeoutException extends NetworkException {
  @override
  final String message = '通信エラーが発生しました。ネットワーク環境をご確認ください';

  const RequestTimeoutException(super.original, super.stackTrace);
}

class RequestUnknownException extends NetworkException {
  @override
  final message = 'システムエラーが発生しました';

  const RequestUnknownException(super.original, super.stackTrace);
}
