import 'dart:convert';
import 'dart:developer';

import 'package:grpc/grpc.dart';
import 'package:protobuf/protobuf.dart';

class LogInterceptor extends ClientInterceptor {
  @override
  ResponseFuture<R> interceptUnary<Q, R>(
    ClientMethod<Q, R> method,
    Q request,
    CallOptions options,
    ClientUnaryInvoker<Q, R> invoker,
  ) {
    if (request is GeneratedMessage) {
      log('[${request.runtimeType}] ${jsonEncode(request.toProto3Json())}');
    }

    final responseFuture =
        super.interceptUnary(method, request, options, invoker);
    responseFuture.then((response) {
      if (response is GeneratedMessage) {
        log('[${response.runtimeType}] ${jsonEncode(response.toProto3Json())}');
      }
    });

    return responseFuture;
  }
}
