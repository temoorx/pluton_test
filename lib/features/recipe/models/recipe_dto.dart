import 'package:json_annotation/json_annotation.dart';

part 'recipe_dto.g.dart';

@JsonSerializable()
class RecipeDTO {
  final int id;
  final String title;
  final String image;
  final String imageType;

  RecipeDTO({
    required this.id,
    required this.title,
    required this.image,
    required this.imageType,
  });

  factory RecipeDTO.fromJson(Map<String, dynamic> json) =>
      _$RecipeDTOFromJson(json);
  Map<String, dynamic> toJson() => _$RecipeDTOToJson(this);
}

@JsonSerializable()
class RecipeSearchResponse {
  final int offset;
  final int number;
  final List<RecipeDTO> results;
  final int totalResults;

  RecipeSearchResponse({
    required this.offset,
    required this.number,
    required this.results,
    required this.totalResults,
  });

  factory RecipeSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$RecipeSearchResponseFromJson(json);
  Map<String, dynamic> toJson() => _$RecipeSearchResponseToJson(this);
}
