import 'package:crypto_v1/core/extensions/size_box.dart';
import 'package:crypto_v1/core/extensions/utils_extension.dart';
import 'package:flutter/material.dart';

import '../../core/constants/colorConst.dart';
import '../../core/constants/imageConst.dart';
import '../../domain/entity/crypto_exchange/entity.dart';
import 'CryptoWidget.dart';

class TopBitcoinWidget extends StatelessWidget {
  const TopBitcoinWidget({
    super.key,
    required this.entity,
  });
  final DataEntity entity;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Stack(
        clipBehavior: Clip.antiAlias,
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            greenColor.withOpacity(0.2),
                            greenColor.withOpacity(0.1)
                          ])),
                  child: CryptoWidget(
                    entity: entity,
                    isTopCard: true,
                  )),
              10.sh
            ],
          ),
          Image.asset(
            ImageConst.wave,
            scale: .8,
          )
        ],
      ),
    );
  }
}
