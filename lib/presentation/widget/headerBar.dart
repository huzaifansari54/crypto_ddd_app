import 'package:crypto_v1/core/extensions/size_box.dart';
import 'package:crypto_v1/core/extensions/text_ex.dart';
import 'package:flutter/material.dart';

import '../../core/constants/imageConst.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          "Exchanges".text(size: 25, fontWeight: FontWeight.w800),
          Row(
            children: [
              Image.asset(
                ImageConst.notification,
                scale: 1.8,
              ),
              10.sw,
              Image.asset(
                ImageConst.settingIcon,
                scale: 1.8,
              )
            ],
          )
        ],
      ),
    );
  }
}
