Pod::Spec.new do |s|
  s.name             = 'APIVerveNutrition'
  s.version          = '1.2.3'
  s.summary          = 'Nutrition returns the nutrition facts for a generic whole food by name - calories and the core macronutrients per 100 grams straight...'
  s.description      = <<-'DESC'
Nutrition returns the nutrition facts for a generic whole food by name - calories and the core macronutrients per 100 grams straight from the USDA food composition database - plus, on paid plans, a full micronutrient panel and derived nutrition intelligence like calories per gram and the protein, fat and carbohydrate share of calories.

This iOS/macOS SDK provides a convenient way to access the Nutrition from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/nutrition?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/nutrition-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveNutrition/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
