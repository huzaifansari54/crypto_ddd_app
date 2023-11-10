import 'package:crypto_v1/core/constants/colorConst.dart';
import 'package:crypto_v1/core/constants/imageConst.dart';
import 'package:crypto_v1/core/constants/text_style_const.dart';
import 'package:crypto_v1/core/extensions/size_box.dart';
import 'package:crypto_v1/core/extensions/utils_extension.dart';
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
import '../widget/bottomBarWidget.dart';
import '../widget/headerBar.dart';
import '../widget/iconWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
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
                const BlocWidget()
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomBarWidget(),
    );
  }
}

class BlocWidget extends StatelessWidget {
  const BlocWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CryptoBloc, CryptoExchangeState>(
      builder: (context, state) {
        return state.when(
            intial: () => const SizedBox(),
            failed: (ApiFailure apiFailure) =>
                FailureWidget(failure: apiFailure),
            loading: () => const Loading(),
            loaded: (CryptoExchangeEntity data) => Column(
                  children: [
                    TopBitcoinWidget(entity: data.data!.first),
                    const HeadingBar(
                        head: "Top Cryptocurrencies",
                        trail: "View All",
                        isheading2: true),
                    ...data.data!
                        .skip(1)
                        .map((e) => CryptoWidget(
                              entity: e,
                            ))
                        .toList()
                  ],
                ));
      },
      listener: (context, state) {},
    );
  }
}
