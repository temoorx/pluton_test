import 'package:dio/dio.dart';
import 'package:pluton_test/constants/api_constants.dart';
import 'package:pluton_test/features/recipe/models/recipe_dto.dart';

class RecipeApi {
  final Dio dio;

  RecipeApi({required this.dio});

  Future<RecipeSearchResponse> searchRecipes(
      Map<String, dynamic> queryParams) async {
    try {
      final response = await dio.get(
        '${ApiConstants.BASE_URL}recipes/complexSearch',
        queryParameters: queryParams,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'x-api-key': ApiConstants.API_KEY,
          },
        ),
      );
      return RecipeSearchResponse.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to load recipes');
    }
  }
}
