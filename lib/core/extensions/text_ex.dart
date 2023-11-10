import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../constants/colorConst.dart';
import '../constants/text_style_const.dart';

extension textEx on String {
  bool get isNum => num.tryParse(this) != null;
  Text text(
      {double? size,
      Color? color,
      TextAlign? align,
      FontWeight? fontWeight,
      bool crossline = false}) {
    return Text(
      this,
      maxLines: 5,
      softWrap: true,
      style: interRegular.copyWith(
          decoration: crossline ? TextDecoration.lineThrough : null,
          fontWeight: fontWeight ?? FontWeight.bold,
          fontSize: size ?? 12,
          color: color ?? secondBlackColor),
      textAlign: align ?? TextAlign.left,
    );
  }
}

extension boolx on bool {
  bool and(bool condition) => this && condition;
  bool or(bool condition) => this || condition;
  bool get toogle => !this;
  bool get isNot => !this;
}
