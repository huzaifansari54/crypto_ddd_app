import 'package:crypto_v1/core/extensions/size_box.dart';
import 'package:crypto_v1/core/extensions/utils_extension.dart';
import 'package:flutter/material.dart';
import 'package:image_cache/image_cache.dart' as MyImageCache;
import '../../core/constants/colorConst.dart';
import '../../core/constants/imageConst.dart';
import '../../domain/entity/crypto_exchange/entity.dart';

class CryptoWidget extends StatelessWidget {
  const CryptoWidget({
    super.key,
    required this.entity,
    this.isTopCard = false,
  });
  final bool isTopCard;
  final DataEntity entity;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyImageCache.ImageCache(
                  errorLoadingImage: const AssetImage(ImageConst.meta),
                  imageUrl: entity.logoUrl,
                  width: (context) => 50,
                  height: (ctx) => 50),
              10.sw,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  entity.symbol.text(size: 18),
                  entity.name.text(
                      size: 12, fontWeight: FontWeight.w600, color: gray2),
                ],
              ),
              if (!isTopCard)
                entity.quote.usd.isRise
                    ? Image.asset(
                        ImageConst.neSign,
                        scale: 1.2,
                      )
                    : Image.asset(
                        ImageConst.poSign,
                        scale: 2,
                      ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              "\$ ${entity.quote.usd.price.ceil()} USD"
                  .text(size: 16, fontWeight: FontWeight.w600),
              entity.quote.usd.isRise
                  ? "${entity.quote.usd.percentChange}%".text(
                      size: 14,
                      fontWeight: FontWeight.w700,
                      color: redColor,
                    )
                  : "+${entity.quote.usd.percentChange}%".text(
                      size: 14,
                      fontWeight: FontWeight.w700,
                      color: greenColor,
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
