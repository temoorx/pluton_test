part of 'recipt_detail_cubit.dart';

@freezed
class RecipeDetailState with _$RecipeDetailState {
  const factory RecipeDetailState.initial() = _Initial;
  const factory RecipeDetailState.loading() = _Loading;
  const factory RecipeDetailState.loaded(RecipeDetails reciptDetails) = _Loaded;
  const factory RecipeDetailState.error(String message) = _Error;
}
