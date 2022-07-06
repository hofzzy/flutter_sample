import 'grpc_error.dart';

Future<void> handleCommonPreProcess({
  int networkDelayMilliSeconds = 1000,
  bool throwDeadlineExceededError = false,
  bool throwInternalServerError = false,
}) async {
  await Future.delayed(Duration(milliseconds: networkDelayMilliSeconds));

  if (throwDeadlineExceededError) {
    throw createDeadlineExceededError();
  }
  if (throwInternalServerError) {
    throw createInternalServerError();
  }
}
