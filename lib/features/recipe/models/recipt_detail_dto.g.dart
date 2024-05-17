// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipt_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReciptDetails _$ReciptDetailsFromJson(Map<String, dynamic> json) =>
    ReciptDetails(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      image: json['image'] as String?,
      imageType: json['imageType'] as String?,
      servings: (json['servings'] as num?)?.toInt(),
      readyInMinutes: (json['readyInMinutes'] as num?)?.toInt(),
      license: json['license'] as String?,
      sourceName: json['sourceName'] as String?,
      sourceUrl: json['sourceUrl'] as String?,
      spoonacularSourceUrl: json['spoonacularSourceUrl'] as String?,
      healthScore: (json['healthScore'] as num?)?.toInt(),
      spoonacularScore: (json['spoonacularScore'] as num?)?.toInt(),
      pricePerServing: (json['pricePerServing'] as num?)?.toDouble(),
      analyzedInstructions: json['analyzedInstructions'] as List<dynamic>?,
      cheap: json['cheap'] as bool?,
      creditsText: json['creditsText'] as String?,
      cuisines: json['cuisines'] as List<dynamic>?,
      dairyFree: json['dairyFree'] as bool?,
      diets: json['diets'] as List<dynamic>?,
      gaps: json['gaps'] as String?,
      glutenFree: json['glutenFree'] as bool?,
      instructions: json['instructions'] as String?,
      ketogenic: json['ketogenic'] as bool?,
      lowFodmap: json['lowFodmap'] as bool?,
      occasions: json['occasions'] as List<dynamic>?,
      sustainable: json['sustainable'] as bool?,
      vegan: json['vegan'] as bool?,
      vegetarian: json['vegetarian'] as bool?,
      veryHealthy: json['veryHealthy'] as bool?,
      veryPopular: json['veryPopular'] as bool?,
      whole30: json['whole30'] as bool?,
      weightWatcherSmartPoints:
          (json['weightWatcherSmartPoints'] as num?)?.toInt(),
      dishTypes: (json['dishTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      extendedIngredients: (json['extendedIngredients'] as List<dynamic>?)
          ?.map((e) => ExtendedIngredient.fromJson(e as Map<String, dynamic>))
          .toList(),
      summary: json['summary'] as String?,
      winePairing: json['winePairing'] == null
          ? null
          : WinePairing.fromJson(json['winePairing'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReciptDetailsToJson(ReciptDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'imageType': instance.imageType,
      'servings': instance.servings,
      'readyInMinutes': instance.readyInMinutes,
      'license': instance.license,
      'sourceName': instance.sourceName,
      'sourceUrl': instance.sourceUrl,
      'spoonacularSourceUrl': instance.spoonacularSourceUrl,
      'healthScore': instance.healthScore,
      'spoonacularScore': instance.spoonacularScore,
      'pricePerServing': instance.pricePerServing,
      'analyzedInstructions': instance.analyzedInstructions,
      'cheap': instance.cheap,
      'creditsText': instance.creditsText,
      'cuisines': instance.cuisines,
      'dairyFree': instance.dairyFree,
      'diets': instance.diets,
      'gaps': instance.gaps,
      'glutenFree': instance.glutenFree,
      'instructions': instance.instructions,
      'ketogenic': instance.ketogenic,
      'lowFodmap': instance.lowFodmap,
      'occasions': instance.occasions,
      'sustainable': instance.sustainable,
      'vegan': instance.vegan,
      'vegetarian': instance.vegetarian,
      'veryHealthy': instance.veryHealthy,
      'veryPopular': instance.veryPopular,
      'whole30': instance.whole30,
      'weightWatcherSmartPoints': instance.weightWatcherSmartPoints,
      'dishTypes': instance.dishTypes,
      'extendedIngredients': instance.extendedIngredients,
      'summary': instance.summary,
      'winePairing': instance.winePairing,
    };

ExtendedIngredient _$ExtendedIngredientFromJson(Map<String, dynamic> json) =>
    ExtendedIngredient(
      aisle: json['aisle'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      consitency: $enumDecodeNullable(_$ConsitencyEnumMap, json['consitency']),
      id: (json['id'] as num?)?.toInt(),
      image: json['image'] as String?,
      measures: json['measures'] == null
          ? null
          : Measures.fromJson(json['measures'] as Map<String, dynamic>),
      meta: (json['meta'] as List<dynamic>?)?.map((e) => e as String).toList(),
      name: json['name'] as String?,
      original: json['original'] as String?,
      originalName: json['originalName'] as String?,
      unit: json['unit'] as String?,
    );

Map<String, dynamic> _$ExtendedIngredientToJson(ExtendedIngredient instance) =>
    <String, dynamic>{
      'aisle': instance.aisle,
      'amount': instance.amount,
      'consitency': _$ConsitencyEnumMap[instance.consitency],
      'id': instance.id,
      'image': instance.image,
      'measures': instance.measures,
      'meta': instance.meta,
      'name': instance.name,
      'original': instance.original,
      'originalName': instance.originalName,
      'unit': instance.unit,
    };

const _$ConsitencyEnumMap = {
  Consitency.liquid: 'liquid',
  Consitency.solid: 'solid',
};

Measures _$MeasuresFromJson(Map<String, dynamic> json) => Measures(
      metric: json['metric'] == null
          ? null
          : Metric.fromJson(json['metric'] as Map<String, dynamic>),
      us: json['us'] == null
          ? null
          : Metric.fromJson(json['us'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MeasuresToJson(Measures instance) => <String, dynamic>{
      'metric': instance.metric,
      'us': instance.us,
    };

Metric _$MetricFromJson(Map<String, dynamic> json) => Metric(
      amount: (json['amount'] as num?)?.toDouble(),
      unitLong: json['unitLong'] as String?,
      unitShort: json['unitShort'] as String?,
    );

Map<String, dynamic> _$MetricToJson(Metric instance) => <String, dynamic>{
      'amount': instance.amount,
      'unitLong': instance.unitLong,
      'unitShort': instance.unitShort,
    };

WinePairing _$WinePairingFromJson(Map<String, dynamic> json) => WinePairing(
      pairedWines: (json['pairedWines'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      pairingText: json['pairingText'] as String?,
      productMatches: (json['productMatches'] as List<dynamic>?)
          ?.map((e) => ProductMatch.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WinePairingToJson(WinePairing instance) =>
    <String, dynamic>{
      'pairedWines': instance.pairedWines,
      'pairingText': instance.pairingText,
      'productMatches': instance.productMatches,
    };

ProductMatch _$ProductMatchFromJson(Map<String, dynamic> json) => ProductMatch(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      price: json['price'] as String?,
      imageUrl: json['imageUrl'] as String?,
      averageRating: (json['averageRating'] as num?)?.toDouble(),
      ratingCount: (json['ratingCount'] as num?)?.toInt(),
      score: (json['score'] as num?)?.toDouble(),
      link: json['link'] as String?,
    );

Map<String, dynamic> _$ProductMatchToJson(ProductMatch instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
      'averageRating': instance.averageRating,
      'ratingCount': instance.ratingCount,
      'score': instance.score,
      'link': instance.link,
    };
