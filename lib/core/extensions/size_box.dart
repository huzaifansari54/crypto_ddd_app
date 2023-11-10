import 'package:flutter/material.dart';

extension box on num {
  SizedBox get sw => SizedBox(width: toDouble());
  SizedBox get sh => SizedBox(height: toDouble());
}
