import 'package:flutter_sample/mock_server/article_mock_service.dart';
import 'package:grpc/grpc.dart';

Future<void> main() async {
  // ignore: avoid_print
  print('Start gRPC mock server');
  final server = Server([
    ArticleMockService(),
  ]);
  await server.serve(port: 8080);
}
