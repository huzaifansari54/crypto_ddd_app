import 'package:crypto_v1/core/extensions/size_box.dart';
import 'package:crypto_v1/core/extensions/text_ex.dart';
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
                width: 250,
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
          GestureDetector(
            onTap: () {},
            child: Container(
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
                      icon: Image.asset(
                        ImageConst.filterIcon,
                        scale: 2,
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
                                value: 0,
                                child: Text(
                                  e.toString().split('.').last,
                                  style: interBold.copyWith(
                                      fontSize: 12, color: secondBlackColor),
                                ),
                              )),
                          // PopupMenuItem<int>(
                          //   padding: EdgeInsets.only(
                          //       right: 2.w, left: 3.5.w, bottom: 0.7.h),
                          //   value: 0,
                          //   child: Text(
                          //     "Add Employee",
                          //     style: poppinsMedium.copyWith(
                          //         fontSize: 12.sp, color: secondBlackColor),
                          //   ),
                          // ),
                          // PopupMenuItem<int>(
                          //   padding: EdgeInsets.only(
                          //       right: 2.w, left: 3.5.w, bottom: 0.7.h),
                          //   value: 1,
                          //   child: Text(
                          //     "Credit Setup",
                          //     style: poppinsMedium.copyWith(
                          //         fontSize: 12.sp, color: secondBlackColor),
                          //   ),
                          // ),
                          // PopupMenuItem<int>(
                          //   padding: EdgeInsets.only(
                          //       right: 2.w, left: 3.5.w, bottom: 0.7.h),
                          //   value: 2,
                          //   child: Text(
                          //     "Logout",
                          //     style: poppinsMedium.copyWith(
                          //         fontSize: 12.sp, color: secondBlackColor),
                          //   ),
                          // ),
                        ];
                      },
                      onSelected: (value) async {
                        // print(value);
                        // if (value == 0) {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //         builder: (context) =>
                        //             EmployeeCreateAccountScreen(),
                        //       ));
                        // } else if (value == 2) {
                        //   await FirebaseAuth.instance.signOut();
                        //   PrefServices().clearData();
                        //   Navigator.pushReplacementNamed(
                        //       context, Routes.WelcomeScreen);
                        // } else if (value == 1) {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //         builder: (context) => CreditSetUpScreen(),
                        //       ));
                        // }
                      }),
                  5.sw,
                  "Filter".text(size: 12, color: greyColor.withOpacity(0.5))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
