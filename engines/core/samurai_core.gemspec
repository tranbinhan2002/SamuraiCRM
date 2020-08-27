$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "samurai/core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "samurai_core"
  spec.version     = Samurai::Core::VERSION
  spec.authors     = ["tranbinhan2002"]
  spec.email       = ["tranbinhan20021997@gmail.com"]
  spec.homepage    = "http://samurails.com"
  spec.summary     = "Core features of SamuraiCRM."
  spec.description = "Core features of SamuraiCRM."
  spec.license     = "MIT"




  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails"
  spec.add_dependency 'sass-rails', "~> 5.0.1"
  spec.add_dependency 'bootstrap-sass', "~> 3.3.3"
  spec.add_dependency 'autoprefixer-rails', "~> 5.1.5"
  spec.add_dependency 'devise'
  spec.add_dependency 'jquery-ui-rails', '~> 5.0'
  spec.add_dependency 'rails-ujs', '~> 0.1.0'
  spec.add_dependency 'jquery-rails', '~> 4.3', '> 4.3.3'
  spec.add_dependency 'cancancan'
  spec.add_development_dependency "sqlite3"
end
