part of 'recipt_detail_cubit.dart';

@freezed
class ReciptDetailState with _$ReciptDetailState {
  const factory ReciptDetailState.initial() = _Initial;
  const factory ReciptDetailState.loading() = _Loading;
  const factory ReciptDetailState.loaded(ReciptDetails reciptDetails) = _Loaded;
  const factory ReciptDetailState.error(String message) = _Error;
  
}
