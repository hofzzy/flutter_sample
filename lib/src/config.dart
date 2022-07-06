import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'grpc_client/grpc_config.dart';

final localConfigProvider = Provider<LocalConfig>((ref) => LocalConfig());

@immutable
abstract class Config {
  static const isRelease = bool.fromEnvironment('dart.vm.product');

  GrpcConfig get grpcConfig;
}

class LocalConfig extends Config {
  @override
  final grpcConfig = const GrpcConfig.local();
}
