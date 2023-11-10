import 'package:crypto_v1/core/extensions/text_ex.dart';
import 'package:crypto_v1/core/failures/api/api_failures.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FailureWidget extends StatelessWidget {
  const FailureWidget({super.key, required this.failure});
  // final ApiFailure failure;
  final ApiFailure failure;

  @override
  Widget build(BuildContext context) {
    return failure.when(
      serverFailed: (s) => s.text(),
      timeout: () => "Time Out".text(),
      invalidToken: () => "Invalid Token".text(),
      internetOut: () => "Internet is Not connected".text(),
    );
  }
}
