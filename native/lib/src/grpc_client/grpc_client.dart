import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';

import '../config.dart';
import 'grpc_config.dart';
import 'grpc_error_handler.dart';
import 'log_interceptor.dart';

@immutable
abstract class GrpcClient<T extends Client> with GrpcErrorHandler {
  static const _defaultTimeout = Duration(seconds: 10);

  @protected
  final ClientChannel channel;

  @protected
  final Iterable<ClientInterceptor>? interceptors;

  @protected
  CallOptions get callOptions => CallOptions(timeout: _defaultTimeout);

  @protected
  T get client;

  @mustCallSuper
  GrpcClient({required GrpcConfig grpcConfig})
      : channel = ClientChannel(
          grpcConfig.host,
          port: grpcConfig.port,
          options: grpcConfig.options,
        ),
        interceptors = Config.isRelease ? null : [LogInterceptor()];
}
