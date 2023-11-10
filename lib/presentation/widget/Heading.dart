import 'package:crypto_v1/core/extensions/size_box.dart';
import 'package:crypto_v1/core/extensions/utils_extension.dart';
import 'package:flutter/material.dart';

import '../../core/constants/colorConst.dart';

class HeadingBar extends StatelessWidget {
  const HeadingBar(
      {super.key,
      required this.head,
      required this.trail,
      this.isheading2 = false});
  final String head;
  final String trail;
  final bool isheading2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: isheading2
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.start,
        children: [
          head.text(
              size: 20,
              fontWeight: isheading2 ? FontWeight.w400 : FontWeight.w600),
          isheading2 ? 0.sw : 20.sw,
          trail.text(
              size: isheading2 ? 12 : 20, color: greyColor.withOpacity(0.5))
        ],
      ),
    );
  }
}
