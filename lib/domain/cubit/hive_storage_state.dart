part of 'hive_storage_cubit.dart';

@freezed
class HiveStorageState with _$HiveStorageState {
  const factory HiveStorageState.initial() = _Initial;
  const factory HiveStorageState.loading() = _LoadingState;
  const factory HiveStorageState.success(List<RecipeDetails> recipes) = _SuccessState;
  const factory HiveStorageState.deleteSuccess(String message) = _DeleteSuccessState;
  const factory HiveStorageState.error(String message) = _ErrorState;
  const factory HiveStorageState.addError(String message) = _AddErrorState;
  const factory HiveStorageState.deleteError(String message) = _DeleteErrorState;
}
