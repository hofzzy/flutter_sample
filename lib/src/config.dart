import 'package:flutter/foundation.dart';

import 'grpc_client/grpc_config.dart';

@immutable
abstract class Config {
  static const isRelease = bool.fromEnvironment('dart.vm.product');

  GrpcConfig get grpcConfig;
}

class LocalConfig extends Config {
  @override
  final grpcConfig = const GrpcConfig.local();
}
