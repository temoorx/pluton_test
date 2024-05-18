import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_detail_dto.g.dart';

@JsonSerializable()
class RecipeDetails {
  int? id;
  String? title;
  String? image;
  String? imageType;
  int? servings;
  int? readyInMinutes;
  String? license;
  String? sourceName;
  String? sourceUrl;
  String? spoonacularSourceUrl;
  int? healthScore;
  int? spoonacularScore;
  double? pricePerServing;
  List<dynamic>? analyzedInstructions;
  bool? cheap;
  String? creditsText;
  List<dynamic>? cuisines;
  bool? dairyFree;
  List<dynamic>? diets;
  String? gaps;
  bool? glutenFree;
  String? instructions;
  bool? ketogenic;
  bool? lowFodmap;
  List<dynamic>? occasions;
  bool? sustainable;
  bool? vegan;
  bool? vegetarian;
  bool? veryHealthy;
  bool? veryPopular;
  bool? whole30;
  int? weightWatcherSmartPoints;
  List<String>? dishTypes;
  List<ExtendedIngredient>? extendedIngredients;
  String? summary;
  WinePairing? winePairing;

  RecipeDetails({
    this.id,
    this.title,
    this.image,
    this.imageType,
    this.servings,
    this.readyInMinutes,
    this.license,
    this.sourceName,
    this.sourceUrl,
    this.spoonacularSourceUrl,
    this.healthScore,
    this.spoonacularScore,
    this.pricePerServing,
    this.analyzedInstructions,
    this.cheap,
    this.creditsText,
    this.cuisines,
    this.dairyFree,
    this.diets,
    this.gaps,
    this.glutenFree,
    this.instructions,
    this.ketogenic,
    this.lowFodmap,
    this.occasions,
    this.sustainable,
    this.vegan,
    this.vegetarian,
    this.veryHealthy,
    this.veryPopular,
    this.whole30,
    this.weightWatcherSmartPoints,
    this.dishTypes,
    this.extendedIngredients,
    this.summary,
    this.winePairing,
  });

  factory RecipeDetails.fromJson(Map<String, dynamic> json) =>
      _$RecipeDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeDetailsToJson(this);
}

@JsonSerializable()
class ExtendedIngredient {
  String? aisle;
  double? amount;
  Consitency? consitency;
  int? id;
  String? image;
  Measures? measures;
  List<String>? meta;
  String? name;
  String? original;
  String? originalName;
  String? unit;

  ExtendedIngredient({
    this.aisle,
    this.amount,
    this.consitency,
    this.id,
    this.image,
    this.measures,
    this.meta,
    this.name,
    this.original,
    this.originalName,
    this.unit,
  });

  factory ExtendedIngredient.fromJson(Map<String, dynamic> json) =>
      _$ExtendedIngredientFromJson(json);

  Map<String, dynamic> toJson() => _$ExtendedIngredientToJson(this);
}

enum Consitency { liquid, solid }

@JsonSerializable()
class Measures {
  Metric? metric;
  Metric? us;

  Measures({
    this.metric,
    this.us,
  });

  factory Measures.fromJson(Map<String, dynamic> json) =>
      _$MeasuresFromJson(json);

  Map<String, dynamic> toJson() => _$MeasuresToJson(this);
}

@JsonSerializable()
class Metric {
  double? amount;
  String? unitLong;
  String? unitShort;

  Metric({
    this.amount,
    this.unitLong,
    this.unitShort,
  });

  factory Metric.fromJson(Map<String, dynamic> json) => _$MetricFromJson(json);

  Map<String, dynamic> toJson() => _$MetricToJson(this);
}

@JsonSerializable()
class WinePairing {
  List<String>? pairedWines;
  String? pairingText;
  List<ProductMatch>? productMatches;

  WinePairing({
    this.pairedWines,
    this.pairingText,
    this.productMatches,
  });

  factory WinePairing.fromJson(Map<String, dynamic> json) =>
      _$WinePairingFromJson(json);

  Map<String, dynamic> toJson() => _$WinePairingToJson(this);
}

@JsonSerializable()
class ProductMatch {
  int? id;
  String? title;
  String? description;
  String? price;
  String? imageUrl;
  double? averageRating;
  int? ratingCount;
  double? score;
  String? link;

  ProductMatch({
    this.id,
    this.title,
    this.description,
    this.price,
    this.imageUrl,
    this.averageRating,
    this.ratingCount,
    this.score,
    this.link,
  });

  factory ProductMatch.fromJson(Map<String, dynamic> json) =>
      _$ProductMatchFromJson(json);

  Map<String, dynamic> toJson() => _$ProductMatchToJson(this);
}
