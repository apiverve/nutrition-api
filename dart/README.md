# Nutrition API - Dart/Flutter Client

Nutrition returns the nutrition facts for a generic whole food by name - calories and the core macronutrients per 100 grams straight from the USDA food composition database - plus, on paid plans, a full micronutrient panel and derived nutrition intelligence like calories per gram and the protein, fat and carbohydrate share of calories.

[![pub package](https://img.shields.io/pub/v/apiverve_nutrition.svg)](https://pub.dev/packages/apiverve_nutrition)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Nutrition API](https://apiverve.com/marketplace/nutrition?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_nutrition: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_nutrition/apiverve_nutrition.dart';

void main() async {
  final client = NutritionClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'food': 'banana',
      'grams': 118
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "food": "Bananas, raw",
    "fdcId": 173944,
    "category": "Fruits and Fruit Juices",
    "basis": "per 100g",
    "servingSizes": [
      {
        "label": "1 NLEA serving",
        "grams": 126
      },
      {
        "label": "1 extra large (9\" or longer)",
        "grams": 152
      },
      {
        "label": "1 large (8\" to 8-7/8\" long)",
        "grams": 136
      }
    ],
    "nutrition": {
      "calories": 89,
      "protein": 1.09,
      "totalFat": 0.33,
      "carbohydrates": 22.8,
      "fiber": 2.6,
      "sugars": 12.2
    },
    "micronutrients": {
      "sodium": 1,
      "potassium": 358,
      "cholesterol": 0,
      "saturatedFat": 0.112,
      "transFat": 0,
      "monounsaturatedFat": 0.032,
      "polyunsaturatedFat": 0.073,
      "calcium": 5,
      "iron": 0.26,
      "magnesium": 27,
      "phosphorus": 22,
      "zinc": 0.15,
      "vitaminC": 8.7,
      "vitaminA": 3,
      "vitaminD": 0,
      "vitaminE": 0.1,
      "vitaminK": 0.5,
      "thiamin": 0.031,
      "riboflavin": 0.073,
      "niacin": 0.665,
      "vitaminB6": 0.367,
      "folate": 20,
      "vitaminB12": 0,
      "water": 74.9
    },
    "analytics": {
      "caloriesPerGram": 0.89,
      "proteinCaloriePercent": 4.4,
      "fatCaloriePercent": 3,
      "carbCaloriePercent": 92.6,
      "proteinPer100Calories": 1.22
    },
    "dailyValues": {
      "protein": 2.2,
      "totalFat": 0.4,
      "saturatedFat": 0.6,
      "cholesterol": 0,
      "sodium": 0,
      "carbohydrates": 8.3,
      "fiber": 9.3,
      "potassium": 7.6,
      "calcium": 0.4,
      "iron": 1.4,
      "magnesium": 6.4,
      "phosphorus": 1.8,
      "zinc": 1.4,
      "vitaminC": 9.7,
      "vitaminA": 0.3,
      "vitaminD": 0,
      "vitaminE": 0.7,
      "vitaminK": 0.4,
      "thiamin": 2.6,
      "riboflavin": 5.6,
      "niacin": 4.2,
      "vitaminB6": 21.6,
      "folate": 5,
      "vitaminB12": 0
    },
    "dietaryFlags": {
      "highProtein": false,
      "goodSourceOfProtein": false,
      "highFiber": false,
      "goodSourceOfFiber": false,
      "lowSodium": true,
      "lowFat": true,
      "lowSaturatedFat": true,
      "lowCholesterol": true,
      "lowCalorie": false
    }
  }
}
```

## API Reference

- **API Home:** [Nutrition API](https://apiverve.com/marketplace/nutrition?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/nutrition](https://docs.apiverve.com/ref/nutrition?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
