import 'package:flutter/material.dart';

Future<void> showSimpleDialog(BuildContext context,
    {String? title, String? body}) {
  return showDialog(
    context: context,
    builder: (_) {
      return AlertDialog(
        title: title != null ? Text(title) : null,
        content: body != null ? Text(body) : null,
        actions: [
          SimpleDialogOption(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          )
        ],
      );
    },
  );
}
