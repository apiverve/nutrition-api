# Nutrition API

Nutrition returns the nutrition facts for a generic whole food by name - calories and the core macronutrients per 100 grams straight from the USDA food composition database - plus, on paid plans, a full micronutrient panel and derived nutrition intelligence like calories per gram and the protein, fat and carbohydrate share of calories.

[![npm version](https://img.shields.io/npm/v/@apiverve/nutrition.svg)](https://www.npmjs.com/package/@apiverve/nutrition)

This is a JavaScript wrapper for the [Nutrition API](https://apiverve.com/marketplace/nutrition?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/nutrition
```

Using yarn:
```shell
yarn add @apiverve/nutrition
```

---

## Configuration

Before using the Nutrition API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=referral&utm_content=readme)

The Nutrition API documentation is found here: [https://docs.apiverve.com/ref/nutrition](https://docs.apiverve.com/ref/nutrition?utm_source=npm&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const nutritionAPI = require('@apiverve/nutrition');
const api = new nutritionAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  food: "banana",
  grams: 118
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  food: "banana",
  grams: 118
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  food: "banana",
  grams: 118
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

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

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=referral&utm_content=readme) and [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
