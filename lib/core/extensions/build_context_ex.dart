import 'package:flutter/material.dart';

extension buildCtx on BuildContext {
  void snackbar(String content) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(content: Text(content)));
  }
}
