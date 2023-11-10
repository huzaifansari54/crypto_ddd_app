import 'package:crypto_v1/core/constants/colorConst.dart';
import 'package:crypto_v1/locator.dart';
import 'package:crypto_v1/presentation/Bloc/Crypto_Exchange/bloc/bloc.dart';
import 'package:crypto_v1/presentation/Bloc/Crypto_Exchange/event/event.dart';
import 'package:crypto_v1/presentation/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  await locator.allReady();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CryptoBloc>(
          create: (context) => CryptoBloc(locator())
            ..add(const CryptoEvent.getAllCryptoExchange(query: {"limit": 10})),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: greenColor),
            useMaterial3: true,
          ),
          home: const HomeScreen()),
    );
  }
}
