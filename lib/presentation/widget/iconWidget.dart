import 'package:crypto_v1/core/constants/colorConst.dart';
import 'package:crypto_v1/core/extensions/size_box.dart';
import 'package:crypto_v1/core/extensions/text_ex.dart';
import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({
    super.key,
    required this.icon,
    required this.head,
  });
  final String icon;
  final String head;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          icon,
          scale: 1.5,
        ),
        4.sh,
        head.text(color: gray2, fontWeight: FontWeight.w500)
      ],
    );
  }
}
