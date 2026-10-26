# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_nutrition"
  spec.version       = "1.2.3"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Nutrition API - Ruby Client"
  spec.description   = "Nutrition returns the nutrition facts for a generic whole food by name - calories and the core macronutrients per 100 grams straight from the USDA food composition database - plus, on paid plans, a full micronutrient panel and derived nutrition intelligence like calories per gram and the protein, fat and carbohydrate share of calories."
  spec.homepage      = "https://apiverve.com/marketplace/nutrition?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/nutrition-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/nutrition"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
