// import 'dart:convert';

// import 'package:crypto_v1/data/model/crypto_exchange/crypto_exchange_model.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import '../../../../core/confidential/confidential.dart';

// class CryptoLocalDataSource {
//   final SharedPreferences _db;

//   const CryptoLocalDataSource(this._db);

//   Future<CryptoExchangeModel> get currentStore async {
//     try {
//       final store = _db.getString(cryptoKey);
//       if (store != null) {
//         return CryptoExchangeModel.fromJson(json.decode(store));
//       }
//     } catch (e) {
//       throw Exception();
//     }
//   }

//   @override
//   Future<void> delete() async {
//     try {
//       if (_db.getString(storeKey)?.isNotEmpty ?? false) {
//         await _db.remove(storeKey);
//       }
//     } catch (e) {
//       throw Exception(e);
//     }
//   }

//   @override
//   Future<void> saveStore({required StoreModel storeModel}) async {
//     try {
//       await _db.setString(storeKey, json.encode(storeModel.toJson()));
//     } catch (e) {
//       throw Exception(e);
//     }
//   }
// }
