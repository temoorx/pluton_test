import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pluton_test/domain/repository/api_repository.dart';
import 'package:pluton_test/features/recipe/models/recipe_dto.dart';

part 'recipe_search_state.dart';

part 'recipe_search_cubit.freezed.dart';

class RecipeSearchCubit extends Cubit<RecipeSearchState> {
  ApiRepository apiRepository;
  RecipeSearchCubit(this.apiRepository) : super(const _Initial());

  void searchRecipes(Map<String, dynamic> queryParams) async {
    emit(const _Loading());
    try {
      final response = await apiRepository.searchRecipes(queryParams);
      emit(RecipeSearchState.loaded(response.results));
    } catch (e) {
      emit(const RecipeSearchState.error('Failed to load recipes'));
    }
  }
}
