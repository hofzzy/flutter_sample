import 'package:grpc/grpc.dart';

import 'network_exception.dart';

mixin GrpcErrorHandler {
  Future<T> handleCommonError<T>(Future<T> Function() function) async {
    try {
      return await function();
    } on GrpcError catch (error, stackTrace) {
      switch (error.code) {
        case StatusCode.notFound:
          throw NotFoundException(
              error.message ?? 'Not found. A message is empty',
              error,
              stackTrace);
        case StatusCode.deadlineExceeded:
          throw RequestTimeoutException(error, stackTrace);
        case StatusCode.internal:
          throw RequestUnknownException(error, stackTrace);
        default:
          throw RequestUnknownException(error, stackTrace);
      }
    } on Exception catch (error, stackTrace) {
      throw RequestUnknownException(error, stackTrace);
    }
  }
}
