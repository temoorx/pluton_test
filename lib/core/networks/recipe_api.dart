import 'package:dio/dio.dart';
import 'package:pluton_test/constants/api_constants.dart';
import 'package:pluton_test/features/recipe/models/recipe_dto.dart';
import 'package:pluton_test/features/recipe/models/recipe_detail_dto.dart';

class RecipeApi {
  final Dio dio;

  RecipeApi({required this.dio});

  Future<RecipeSearchResponse> searchRecipes(
      Map<String, dynamic> queryParams) async {
    try {
      final response = await dio.get(
        '${ApiConstants.baseUrl}recipes/complexSearch',
        queryParameters: queryParams,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'x-api-key': ApiConstants.apiKey,
          },
        ),
      );
      return RecipeSearchResponse.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to load recipes');
    }
  }

  Future<RecipeDetails> getRecipeDetail({required int id}) async {
    try {
      final response = await dio.get(
        '${ApiConstants.baseUrl}recipes/$id/information',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'x-api-key': ApiConstants.apiKey,
          },
        ),
      );
      return RecipeDetails.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to load recipe detail');
    }
  }
}
