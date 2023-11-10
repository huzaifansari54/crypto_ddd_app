import 'package:bloc/bloc.dart';
import 'package:crypto_v1/data/model/crypto_exchange/crypto_exchange_model.dart';
import 'package:crypto_v1/domain/UseCase/crypto_exchange/getAllCryptoUseCase.dart';
import 'package:crypto_v1/domain/entity/crypto_exchange/entity.dart';
import 'package:crypto_v1/presentation/Bloc/Crypto_Exchange/event/event.dart';
import 'package:crypto_v1/presentation/Bloc/Crypto_Exchange/state/state.dart';

import '../../../widget/searchBar.dart';

class CryptoBloc extends Bloc<CryptoEvent, CryptoExchangeState> {
  final GetAllCryptoUseCase _useCase;
  CryptoBloc(this._useCase) : super(const CryptoExchangeState.intial()) {
    on<CryptoEvent>((event, emit) async {
      await event.when(getAllCryptoExchange: (q) async {
        emit(const CryptoExchangeState.loading());
        final resultOrFailure = await _useCase(
            param: event.maybeWhen(
                getAllCryptoExchange: (query) => query, orElse: () => {}));
        resultOrFailure.fold((fail) {
          emit(CryptoExchangeState.failed(apiFailure: fail));
        }, (data) {
          dataList.addAll(data.data.map((e) => e.toEntity()));
          emit(CryptoExchangeState.loaded(entity: data.toDomain()));
        });
      }, filter: (fil) {
        emit(const CryptoExchangeState.loading());

        switch (fil) {
          case filter.price:
            dataList.sort(
                (a, b) => (a.quote.usd.price.compareTo(b.quote.usd.price)));

            emit(CryptoExchangeState.loaded(
                entity: CryptoExchangeEntity(data: dataList)));
            break;
          case filter.volume_24h:
            dataList.sort((a, b) => (a.quote.usd.volume_change_24h
                .compareTo(b.quote.usd.volume_change_24h)));

            emit(CryptoExchangeState.loaded(
                entity: CryptoExchangeEntity(data: dataList)));
            break;
        }
      });
    });
  }
  final List<DataEntity> dataList = [];

  void _filter(filter fil, Emitter<CryptoExchangeState> emit) {}
}
