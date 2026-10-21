# Nutrition API - Ruby Gem

Nutrition returns the nutrition facts for a generic whole food by name - calories and the core macronutrients per 100 grams straight from the USDA food composition database - plus, on paid plans, a full micronutrient panel and derived nutrition intelligence like calories per gram and the protein, fat and carbohydrate share of calories.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_nutrition'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_nutrition
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_nutrition'

# Initialize the client
client = APIVerve::Nutrition::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  food: "banana",
  grams: 118
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ food: "banana", grams: 118 })
  puts response["data"]
rescue APIVerve::Nutrition::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Nutrition::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Nutrition::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/nutrition?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/nutrition?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/nutrition?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
