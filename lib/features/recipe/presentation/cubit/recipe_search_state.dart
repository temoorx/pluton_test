part of 'recipe_search_cubit.dart';


@freezed

class RecipeSearchState with _$RecipeSearchState {
  const factory RecipeSearchState.initial() = _Initial;
  const factory RecipeSearchState.loading() = _Loading;
  const factory RecipeSearchState.loaded(List<RecipeDTO> recipes) = RecipeSearchLoaded;
  const factory RecipeSearchState.error(String message) = RecipeSearchError;
}
