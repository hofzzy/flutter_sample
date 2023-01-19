import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/app.dart';

void main() {
  if (true) {
    print("hoge");
  }
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

int? hoge() {
  const x = 'hoge';
  return x?.length;
}

int fuga() {
  const x = 'hoge';
  return x;
}
