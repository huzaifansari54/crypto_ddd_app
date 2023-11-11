import 'dart:convert';

import 'package:crypto_v1/data/model/crypto_exchange/crypto_exchange_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/confidential/confidential.dart';

class CryptoLocalDataSource {
  final SharedPreferences _db;

  const CryptoLocalDataSource(this._db);

  Future<CryptoExchangeModel> getAllCrypto() async {
    try {
      final store = _db.getString(cryptoKey);
      if (store != null) {
        return CryptoExchangeModel.fromJson(json.decode(store));
      }
      return const CryptoExchangeModel(data: []);
    } catch (e) {
      throw Exception();
    }
  }

  Future<void> delete() async {
    try {
      if (_db.getString(cryptoKey)?.isNotEmpty ?? false) {
        await _db.remove(cryptoKey);
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> saveCrypto({required CryptoExchangeModel model}) async {
    try {
      await _db.setString(cryptoKey, json.encode(model.toJson()));
    } catch (e) {
      throw Exception(e);
    }
  }
}
