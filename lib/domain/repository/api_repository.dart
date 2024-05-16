import 'package:pluton_test/core/networks/recipe_api.dart';
import 'package:pluton_test/features/recipe/models/recipe_dto.dart';

class ApiRepository {
  final RecipeApi remoteDataSource;

  ApiRepository({required this.remoteDataSource});

  Future<RecipeSearchResponse> searchRecipes(
      Map<String, dynamic> queryParams) async {
    return remoteDataSource.searchRecipes(queryParams);
  }
}
