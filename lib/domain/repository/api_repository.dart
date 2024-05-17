import 'package:pluton_test/core/networks/recipe_api.dart';
import 'package:pluton_test/features/recipe/models/recipe_dto.dart';
import 'package:pluton_test/features/recipe/models/recipt_detail_dto.dart';

class ApiRepository {
  final RecipeApi remoteDataSource;

  ApiRepository({required this.remoteDataSource});

  Future<RecipeSearchResponse> searchRecipes(
      Map<String, dynamic> queryParams) async {
    return remoteDataSource.searchRecipes(queryParams);
  }

  Future<ReciptDetails> getReciptDetail({required int id}) {
    return remoteDataSource.getReciptDetail(id: id);
  }
}
