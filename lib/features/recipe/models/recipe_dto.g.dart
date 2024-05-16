// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecipeDTO _$RecipeDTOFromJson(Map<String, dynamic> json) => RecipeDTO(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      image: json['image'] as String,
      imageType: json['imageType'] as String,
    );

Map<String, dynamic> _$RecipeDTOToJson(RecipeDTO instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'imageType': instance.imageType,
    };

RecipeSearchResponse _$RecipeSearchResponseFromJson(
        Map<String, dynamic> json) =>
    RecipeSearchResponse(
      offset: (json['offset'] as num).toInt(),
      number: (json['number'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => RecipeDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalResults: (json['totalResults'] as num).toInt(),
    );

Map<String, dynamic> _$RecipeSearchResponseToJson(
        RecipeSearchResponse instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'number': instance.number,
      'results': instance.results,
      'totalResults': instance.totalResults,
    };
