import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';

@immutable
class GrpcConfig {
  final String host;
  final int port;
  final ChannelOptions options;

  const GrpcConfig.local()
      : host = 'localhost',
        port = 8080,
        options =
            const ChannelOptions(credentials: ChannelCredentials.insecure());
}
