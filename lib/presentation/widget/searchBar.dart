import 'package:crypto_v1/core/extensions/size_box.dart';
import 'package:crypto_v1/core/extensions/utils_extension.dart';
import 'package:crypto_v1/presentation/Bloc/Crypto_Exchange/bloc/bloc.dart';
import 'package:crypto_v1/presentation/Bloc/Crypto_Exchange/event/event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/constants/colorConst.dart';
import '../../core/constants/imageConst.dart';
import '../../core/constants/text_style_const.dart';

enum filter { price, volume_24h }

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
                color: lightBlackColor,
                borderRadius: BorderRadius.circular(25)),
            child: SizedBox(
                width: 220,
                height: 45,
                child: TextFormField(
                  style: interMedium,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 2, vertical: 8),
                      prefixIcon: Image.asset(
                        ImageConst.search,
                        scale: 1.6,
                      ),
                      hintStyle: interSemiBold.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: greyColor.withOpacity(0.5)),
                      hintText: "Search Cryptocurrency",
                      border: InputBorder.none),
                )),
          ),
          Container(
            height: 45,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  width: 1.5,
                  color: gray2.withOpacity(0.6),
                )),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PopupMenuButton(
                    padding: EdgeInsets.zero,
                    icon: const Icon(
                      Icons.sort,
                      color: gray2,
                    ),
                    color: whiteColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    itemBuilder: (context) {
                      return [
                        ...filter.values.map((e) => PopupMenuItem<int>(
                              height: 10,
                              onTap: () {
                                switch (e) {
                                  case filter.price:
                                    context.read<CryptoBloc>().add(
                                        const CryptoEvent.filter(
                                            fil: filter.price));
                                    break;
                                  case filter.volume_24h:
                                    context.read<CryptoBloc>().add(
                                        const CryptoEvent.filter(
                                            fil: filter.volume_24h));
                                    break;
                                }
                              },
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              child: Text(
                                e.toString().split('.').last,
                                style: interBold.copyWith(
                                    fontSize: 12, color: secondBlackColor),
                              ),
                            )),
                      ];
                    },
                    onSelected: (value) async {}),
                "Filter".text(size: 12, color: greyColor.withOpacity(0.5))
              ],
            ),
          ),
          5.sw
        ],
      ),
    );
  }
}
