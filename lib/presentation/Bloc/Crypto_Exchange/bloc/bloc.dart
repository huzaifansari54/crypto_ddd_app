import 'package:bloc/bloc.dart';
import 'package:crypto_v1/core/extensions/utils_extension.dart';
import 'package:crypto_v1/core/utils/utils.dart';
import 'package:crypto_v1/data/model/crypto_exchange/crypto_exchange_model.dart';
import 'package:crypto_v1/domain/UseCase/crypto_exchange/cachedCryptoUseCase.dart';
import 'package:crypto_v1/domain/UseCase/crypto_exchange/getAllCryptoUseCase.dart';
import 'package:crypto_v1/domain/UseCase/crypto_exchange/getCacheUseCase.dart';
import 'package:crypto_v1/domain/entity/crypto_exchange/entity.dart';
import 'package:crypto_v1/locator.dart';
import 'package:crypto_v1/presentation/Bloc/Crypto_Exchange/event/event.dart';
import 'package:crypto_v1/presentation/Bloc/Crypto_Exchange/state/state.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import '../../../../domain/UseCase/crypto_exchange/filter.dart';
import '../../../widget/searchBar.dart';

class CryptoBloc extends Bloc<CryptoEvent, CryptoExchangeState> {
  final GetAllCryptoUseCase _getCryproUseCase;
  final FilterCryptoUseCase _filterUseCase;
  final GetCacheCryptoUseCase _getCacheUseCase;
  final CachedCryptoUseCase _savecachedDataUseCase;
  CryptoBloc(
    this._getCryproUseCase,
    this._filterUseCase,
    this._getCacheUseCase,
    this._savecachedDataUseCase,
  ) : super(const CryptoExchangeState.intial()) {
    on<CryptoEvent>((event, emit) async {
      await event.when(
          getAllCryptoExchange: (q) async {
            await _getCrypto(event, emit, q);
          },
          filter: (qurey, fil) async {
            await _filter(fil, qurey, emit);
          },
          search: (Map<String, dynamic> query) {},
          searchLocaly: (String query) {
            if (query.isEmpty) {
              emit(CryptoExchangeState.loaded(entity: cache.toList()));
            } else {
              emit(CryptoExchangeState.loaded(
                  entity: cache
                      .where((element) =>
                          element.symbol.toLowerCase() == query.toLowerCase())
                      .toList()));
            }
          });
    });
  }

  Set<DataEntity> cache = <DataEntity>{};

  Future<void> _filter(
      filter fil, DataMap query, Emitter<CryptoExchangeState> emit) async {
    emit(const CryptoExchangeState.loading(entity: []));
    switch (fil) {
      case filter.price:
        final resultOrFailure = await _filterUseCase(param: query);
        resultOrFailure.fold((fail) {
          emit(CryptoExchangeState.failed(apiFailure: fail));
        }, (data) {
          emit(CryptoExchangeState.loaded(
              entity: [...data.data.map((e) => e.toEntity())]));
        });
        break;
      case filter.volume_24h:
        final resultOrFailure = await _filterUseCase(param: query);
        resultOrFailure.fold((fail) {
          emit(CryptoExchangeState.failed(apiFailure: fail));
        }, (data) {
          emit(CryptoExchangeState.loaded(
              entity: [...data.data.map((e) => e.toEntity())]));
        });
        break;
    }
  }

  Future<void> _getCrypto(CryptoEvent event, Emitter<CryptoExchangeState> emit,
      DataMap query) async {
    emit(CryptoExchangeState.loading(entity: cache.toList()));
    final resultOrFailure = await _getCryproUseCase(param: query);
    await resultOrFailure.fold((fail) async {
      final cacheData = await _getCacheUseCase(param: {});
      cacheData.fold((fail) {
        emit(CryptoExchangeState.failed(apiFailure: fail));
      }, (cachedata) {
        emit(CryptoExchangeState.failedWithCachData(
            apiFailure: fail, cacheData: cachedata.toDomain()));
      });
    }, (data) {
      cache.addAll(data.data.map((e) => e.toEntity()).toSet());
      _savecachedDataUseCase(param: data);

      emit(CryptoExchangeState.loaded(entity: [...cache.toList()]));
    });
  }
}
