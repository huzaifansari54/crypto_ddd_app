import 'package:flutter/material.dart';

import '../../core/constants/colorConst.dart';
import '../../core/constants/imageConst.dart';
import 'iconWidget.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: 70,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: blackColor, borderRadius: BorderRadius.circular(25)),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconWidget(icon: ImageConst.face, head: "€-\$hop"),
                IconWidget(icon: ImageConst.exchange, head: "Exchange"),
                SizedBox(width: 30),
                IconWidget(icon: ImageConst.rocket, head: "Launchpads"),
                IconWidget(icon: ImageConst.wallet, head: "Wallet"),
              ],
            ),
          ),
          Positioned(
            top: null,
            bottom: -26.5,
            child: Image.asset(ImageConst.meta,
                height: 150, width: 150, fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }
}
