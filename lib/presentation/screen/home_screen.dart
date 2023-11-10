import 'package:crypto_v1/core/constants/colorConst.dart';
import 'package:crypto_v1/core/constants/imageConst.dart';
import 'package:crypto_v1/core/constants/text_style_const.dart';
import 'package:crypto_v1/core/extensions/size_box.dart';
import 'package:crypto_v1/core/extensions/text_ex.dart';
import 'package:crypto_v1/presentation/Bloc/Crypto_Exchange/bloc/bloc.dart';
import 'package:crypto_v1/presentation/Bloc/Crypto_Exchange/event/event.dart';
import 'package:crypto_v1/presentation/Bloc/Crypto_Exchange/state/state.dart';
import 'package:crypto_v1/presentation/widget/APIWdget/failure.dart';
import 'package:crypto_v1/presentation/widget/APIWdget/loading.dart';
import 'package:crypto_v1/presentation/widget/searchBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

import '../../core/failures/api/api_failures.dart';
import '../../domain/entity/crypto_exchange/entity.dart';
import '../widget/CryptoWidget.dart';
import '../widget/Heading.dart';
import '../widget/TobBitcoinWidget.dart';
import '../widget/headerBar.dart';
import '../widget/iconWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: SingleChildScrollView(
            child: Column(
              children: [
                20.sh,
                const HeaderBar(),
                const SearchBarWidget(),
                const HeadingBar(head: "Cryptocurrency", trail: "NFT"),
                BlocConsumer<CryptoBloc, CryptoExchangeState>(
                  builder: (context, state) {
                    return state.when(intial: () {
                      return const SizedBox();
                    }, failed: (ApiFailure apiFailure) {
                      return FailureWidget(failure: apiFailure);
                    }, loading: () {
                      return const Loading();
                    }, loaded: (CryptoExchangeEntity data) {
                      return Column(
                        children: [
                          TopBitcoinWidget(
                            entity: data.data!.first,
                          ),
                          const HeadingBar(
                              head: "Top Cryptocurrencies",
                              trail: "View All",
                              isheading2: true),
                          ...data.data!
                              .skip(1)
                              .map((e) => CryptoWidget(
                                    entity: e,
                                  ))
                              .toList(),
                        ],
                      );
                    });
                  },
                  listener: (context, state) {},
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
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
                  IconWidget(
                    icon: ImageConst.face,
                    head: "€-\$hop",
                  ),
                  IconWidget(
                    icon: ImageConst.exchange,
                    head: "Exchange",
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  IconWidget(
                    icon: ImageConst.rocket,
                    head: "Launchpads",
                  ),
                  IconWidget(
                    icon: ImageConst.wallet,
                    head: "Wallet",
                  ),
                ],
              ),
            ),
            Positioned(
              top: null,
              bottom: -26.5,
              child: Image.asset(
                ImageConst.meta,
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
