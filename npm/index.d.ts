declare module '@apiverve/nutrition' {
  export interface nutritionOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface nutritionResponse {
    status: string;
    error: string | null;
    data: NutritionData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface NutritionData {
      food:           null | string;
      fdcID:          number | null;
      category:       null | string;
      basis:          null | string;
      servingSizes:   ServingSize[];
      nutrition:      Nutrition;
      micronutrients: { [key: string]: number | null };
      analytics:      Analytics;
      dailyValues:    { [key: string]: number | null };
      dietaryFlags:   DietaryFlags;
  }
  
  interface Analytics {
      caloriesPerGram:       number | null;
      proteinCaloriePercent: number | null;
      fatCaloriePercent:     number | null;
      carbCaloriePercent:    number | null;
      proteinPer100Calories: number | null;
  }
  
  interface DietaryFlags {
      highProtein:         boolean | null;
      goodSourceOfProtein: boolean | null;
      highFiber:           boolean | null;
      goodSourceOfFiber:   boolean | null;
      lowSodium:           boolean | null;
      lowFat:              boolean | null;
      lowSaturatedFat:     boolean | null;
      lowCholesterol:      boolean | null;
      lowCalorie:          boolean | null;
  }
  
  interface Nutrition {
      calories:      number | null;
      protein:       number | null;
      totalFat:      number | null;
      carbohydrates: number | null;
      fiber:         number | null;
      sugars:        number | null;
  }
  
  interface ServingSize {
      label: null | string;
      grams: number | null;
  }

  export default class nutritionWrapper {
    constructor(options: nutritionOptions);

    execute(callback: (error: any, data: nutritionResponse | null) => void): Promise<nutritionResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: nutritionResponse | null) => void): Promise<nutritionResponse>;
    execute(query?: Record<string, any>): Promise<nutritionResponse>;
  }
}
