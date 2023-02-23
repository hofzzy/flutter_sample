import 'package:grpc/grpc.dart';

GrpcError createDeadlineExceededError() {
  return GrpcError.deadlineExceeded();
}

GrpcError createInternalServerError() {
  return GrpcError.internal();
}
