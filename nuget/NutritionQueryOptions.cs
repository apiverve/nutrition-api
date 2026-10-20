using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.Nutrition
{
    /// <summary>
    /// Query options for the Nutrition API
    /// </summary>
    public class NutritionQueryOptions
    {
        /// <summary>
        /// Name of the food to look up (e.g. banana, chicken breast, olive oil)
        /// </summary>
        [JsonProperty("food")]
        public string Food { get; set; }

        /// <summary>
        /// Serving weight in grams to scale the nutrition panel to. Defaults to a per-100-gram basis.
        /// </summary>
        [JsonProperty("grams")]
        public double? Grams { get; set; }
    }
}
