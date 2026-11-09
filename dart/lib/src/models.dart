/// Response models for the Nutrition API.

/// API Response wrapper.
class NutritionResponse {
  final String status;
  final dynamic error;
  final NutritionData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  NutritionResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory NutritionResponse.fromJson(Map<String, dynamic> json) => NutritionResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? NutritionData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Nutrition API.

class NutritionData {
  String? food;
  num? fdcId;
  String? category;
  String? basis;
  List<NutritionDataServingsizesItem>? servingSizes;
  NutritionDataNutrition? nutrition;
  NutritionDataMicronutrients? micronutrients;
  NutritionDataAnalytics? analytics;
  NutritionDataDailyvalues? dailyValues;
  NutritionDataDietaryflags? dietaryFlags;

  NutritionData({
    this.food,
    this.fdcId,
    this.category,
    this.basis,
    this.servingSizes,
    this.nutrition,
    this.micronutrients,
    this.analytics,
    this.dailyValues,
    this.dietaryFlags,
  });

  factory NutritionData.fromJson(Map<String, dynamic> json) => NutritionData(
      food: json['food'],
      fdcId: json['fdcId'],
      category: json['category'],
      basis: json['basis'],
      servingSizes: (json['servingSizes'] as List?)?.map((e) => NutritionDataServingsizesItem.fromJson(e)).toList(),
      nutrition: json['nutrition'] != null ? NutritionDataNutrition.fromJson(json['nutrition']) : null,
      micronutrients: json['micronutrients'] != null ? NutritionDataMicronutrients.fromJson(json['micronutrients']) : null,
      analytics: json['analytics'] != null ? NutritionDataAnalytics.fromJson(json['analytics']) : null,
      dailyValues: json['dailyValues'] != null ? NutritionDataDailyvalues.fromJson(json['dailyValues']) : null,
      dietaryFlags: json['dietaryFlags'] != null ? NutritionDataDietaryflags.fromJson(json['dietaryFlags']) : null,
    );
}

class NutritionDataServingsizesItem {
  String? label;
  num? grams;

  NutritionDataServingsizesItem({
    this.label,
    this.grams,
  });

  factory NutritionDataServingsizesItem.fromJson(Map<String, dynamic> json) => NutritionDataServingsizesItem(
      label: json['label'],
      grams: json['grams'],
    );
}

class NutritionDataNutrition {
  num? calories;
  num? protein;
  num? totalFat;
  num? carbohydrates;
  num? fiber;
  num? sugars;

  NutritionDataNutrition({
    this.calories,
    this.protein,
    this.totalFat,
    this.carbohydrates,
    this.fiber,
    this.sugars,
  });

  factory NutritionDataNutrition.fromJson(Map<String, dynamic> json) => NutritionDataNutrition(
      calories: json['calories'],
      protein: json['protein'],
      totalFat: json['totalFat'],
      carbohydrates: json['carbohydrates'],
      fiber: json['fiber'],
      sugars: json['sugars'],
    );
}

class NutritionDataMicronutrients {
  num? sodium;
  num? potassium;
  num? cholesterol;
  num? saturatedFat;
  num? transFat;
  num? monounsaturatedFat;
  num? polyunsaturatedFat;
  num? calcium;
  num? iron;
  num? magnesium;
  num? phosphorus;
  num? zinc;
  num? vitaminC;
  num? vitaminA;
  num? vitaminD;
  num? vitaminE;
  num? vitaminK;
  num? thiamin;
  num? riboflavin;
  num? niacin;
  num? vitaminB6;
  num? folate;
  num? vitaminB12;
  num? water;

  NutritionDataMicronutrients({
    this.sodium,
    this.potassium,
    this.cholesterol,
    this.saturatedFat,
    this.transFat,
    this.monounsaturatedFat,
    this.polyunsaturatedFat,
    this.calcium,
    this.iron,
    this.magnesium,
    this.phosphorus,
    this.zinc,
    this.vitaminC,
    this.vitaminA,
    this.vitaminD,
    this.vitaminE,
    this.vitaminK,
    this.thiamin,
    this.riboflavin,
    this.niacin,
    this.vitaminB6,
    this.folate,
    this.vitaminB12,
    this.water,
  });

  factory NutritionDataMicronutrients.fromJson(Map<String, dynamic> json) => NutritionDataMicronutrients(
      sodium: json['sodium'],
      potassium: json['potassium'],
      cholesterol: json['cholesterol'],
      saturatedFat: json['saturatedFat'],
      transFat: json['transFat'],
      monounsaturatedFat: json['monounsaturatedFat'],
      polyunsaturatedFat: json['polyunsaturatedFat'],
      calcium: json['calcium'],
      iron: json['iron'],
      magnesium: json['magnesium'],
      phosphorus: json['phosphorus'],
      zinc: json['zinc'],
      vitaminC: json['vitaminC'],
      vitaminA: json['vitaminA'],
      vitaminD: json['vitaminD'],
      vitaminE: json['vitaminE'],
      vitaminK: json['vitaminK'],
      thiamin: json['thiamin'],
      riboflavin: json['riboflavin'],
      niacin: json['niacin'],
      vitaminB6: json['vitaminB6'],
      folate: json['folate'],
      vitaminB12: json['vitaminB12'],
      water: json['water'],
    );
}

class NutritionDataAnalytics {
  num? caloriesPerGram;
  num? proteinCaloriePercent;
  num? fatCaloriePercent;
  num? carbCaloriePercent;
  num? proteinPer100Calories;

  NutritionDataAnalytics({
    this.caloriesPerGram,
    this.proteinCaloriePercent,
    this.fatCaloriePercent,
    this.carbCaloriePercent,
    this.proteinPer100Calories,
  });

  factory NutritionDataAnalytics.fromJson(Map<String, dynamic> json) => NutritionDataAnalytics(
      caloriesPerGram: json['caloriesPerGram'],
      proteinCaloriePercent: json['proteinCaloriePercent'],
      fatCaloriePercent: json['fatCaloriePercent'],
      carbCaloriePercent: json['carbCaloriePercent'],
      proteinPer100Calories: json['proteinPer100Calories'],
    );
}

class NutritionDataDailyvalues {
  num? protein;
  num? totalFat;
  num? saturatedFat;
  num? cholesterol;
  num? sodium;
  num? carbohydrates;
  num? fiber;
  num? potassium;
  num? calcium;
  num? iron;
  num? magnesium;
  num? phosphorus;
  num? zinc;
  num? vitaminC;
  num? vitaminA;
  num? vitaminD;
  num? vitaminE;
  num? vitaminK;
  num? thiamin;
  num? riboflavin;
  num? niacin;
  num? vitaminB6;
  num? folate;
  num? vitaminB12;

  NutritionDataDailyvalues({
    this.protein,
    this.totalFat,
    this.saturatedFat,
    this.cholesterol,
    this.sodium,
    this.carbohydrates,
    this.fiber,
    this.potassium,
    this.calcium,
    this.iron,
    this.magnesium,
    this.phosphorus,
    this.zinc,
    this.vitaminC,
    this.vitaminA,
    this.vitaminD,
    this.vitaminE,
    this.vitaminK,
    this.thiamin,
    this.riboflavin,
    this.niacin,
    this.vitaminB6,
    this.folate,
    this.vitaminB12,
  });

  factory NutritionDataDailyvalues.fromJson(Map<String, dynamic> json) => NutritionDataDailyvalues(
      protein: json['protein'],
      totalFat: json['totalFat'],
      saturatedFat: json['saturatedFat'],
      cholesterol: json['cholesterol'],
      sodium: json['sodium'],
      carbohydrates: json['carbohydrates'],
      fiber: json['fiber'],
      potassium: json['potassium'],
      calcium: json['calcium'],
      iron: json['iron'],
      magnesium: json['magnesium'],
      phosphorus: json['phosphorus'],
      zinc: json['zinc'],
      vitaminC: json['vitaminC'],
      vitaminA: json['vitaminA'],
      vitaminD: json['vitaminD'],
      vitaminE: json['vitaminE'],
      vitaminK: json['vitaminK'],
      thiamin: json['thiamin'],
      riboflavin: json['riboflavin'],
      niacin: json['niacin'],
      vitaminB6: json['vitaminB6'],
      folate: json['folate'],
      vitaminB12: json['vitaminB12'],
    );
}

class NutritionDataDietaryflags {
  bool? highProtein;
  bool? goodSourceOfProtein;
  bool? highFiber;
  bool? goodSourceOfFiber;
  bool? lowSodium;
  bool? lowFat;
  bool? lowSaturatedFat;
  bool? lowCholesterol;
  bool? lowCalorie;

  NutritionDataDietaryflags({
    this.highProtein,
    this.goodSourceOfProtein,
    this.highFiber,
    this.goodSourceOfFiber,
    this.lowSodium,
    this.lowFat,
    this.lowSaturatedFat,
    this.lowCholesterol,
    this.lowCalorie,
  });

  factory NutritionDataDietaryflags.fromJson(Map<String, dynamic> json) => NutritionDataDietaryflags(
      highProtein: json['highProtein'],
      goodSourceOfProtein: json['goodSourceOfProtein'],
      highFiber: json['highFiber'],
      goodSourceOfFiber: json['goodSourceOfFiber'],
      lowSodium: json['lowSodium'],
      lowFat: json['lowFat'],
      lowSaturatedFat: json['lowSaturatedFat'],
      lowCholesterol: json['lowCholesterol'],
      lowCalorie: json['lowCalorie'],
    );
}

class NutritionRequest {
  String food;
  double? grams;

  NutritionRequest({
    required this.food,
    this.grams,
  });

  Map<String, dynamic> toJson() => {
      'food': food,
      if (grams != null) 'grams': grams,
    };
}
