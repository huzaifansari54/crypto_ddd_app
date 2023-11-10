import 'dart:io';

import 'package:flutter/material.dart';


extension buildctx on BuildContext {
  void snackbar(String content) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(content: Text(content)));
  }


}





