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
                  // onSaved: (value) {
                  //   if (value!.isNotEmpty) {
                  //     context
                  //         .read<CryptoBloc>()
                  //         .add(CryptoEvent.searchLocaly(query1: value));
                  //   }
                  // },
                  // onFieldSubmitted: (value) {
                  //   if (value.isNotEmpty) {
                  //     context
                  //         .read<CryptoBloc>()
                  //         .add(CryptoEvent.searchLocaly(query1: value));
                  //   }
                  // },
                  onChanged: (value) {
                    context
                        .read<CryptoBloc>()
                        .add(CryptoEvent.searchLocaly(query1: value));
                  },
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
                                  showRange(
                                      context, "Select Range", filter.price);
                                  break;
                                case filter.volume_24h:
                                  showRange(context, "Select Range",
                                      filter.volume_24h);
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
                ),
                "Filter".text(size: 12, color: greyColor.withOpacity(0.5))
              ],
            ),
          ),
          5.sw
        ],
      ),
    );
  }

  PersistentBottomSheetController<dynamic> showRange(
      BuildContext context, String title, filter fil) {
    return showBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
              color: greenColor.withOpacity(0.2),
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(20))),
          height: 300,
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.cancel)),
                  title.text(size: 18),
                ],
              ),
              RangeSliderExample(
                fil: fil,
              )
            ],
          ),
        );
      },
    );
  }
}

class RangeSliderExample extends StatefulWidget {
  const RangeSliderExample({super.key, required this.fil});
  final filter fil;

  @override
  State<RangeSliderExample> createState() => _RangeSliderExampleState();
}

class _RangeSliderExampleState extends State<RangeSliderExample> {
  RangeValues _currentRangeValues = const RangeValues(40, 80);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RangeSlider(
          values: _currentRangeValues,
          max: 100,
          divisions: 5,
          labels: RangeLabels(
            _currentRangeValues.start.round().toString(),
            _currentRangeValues.end.round().toString(),
          ),
          onChanged: (RangeValues values) {
            setState(() {
              _currentRangeValues = values;
            });
          },
        ),
        MaterialButton(
          color: greenColor,
          shape: const StadiumBorder(),
          onPressed: () {
            switch (widget.fil) {
              case filter.price:
                context.read<CryptoBloc>().add(CryptoEvent.filter(query: {
                      "price_min": _currentRangeValues.start,
                      "price_max": _currentRangeValues.end,
                      "limit": 5
                    }, fil: filter.price));
                break;
              case filter.volume_24h:
                context.read<CryptoBloc>().add(CryptoEvent.filter(query: {
                      "volume_24h_min": _currentRangeValues.start,
                      "volume_24h_max": _currentRangeValues.end,
                      "limit": 5
                    }, fil: filter.price));
                break;
            }

            Navigator.pop(context);
          },
          child: SizedBox(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.sort),
                "Filter".text(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
