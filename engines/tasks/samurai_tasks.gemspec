$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "samurai/tasks/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "samurai_tasks"
  s.version     = Samurai::Tasks::VERSION
  s.authors     = ["tranbinhan2002"]
  s.email       = ["tranbinhan20021997@gmail.com"]
  s.homepage    = "http://samurails.com"
  s.summary     = "Task feature for SamuraiCRM."
  s.description = "Task feature for SamuraiCRM."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]


  s.add_dependency "rails"
  s.add_dependency "samurai_core"
  s.add_dependency "deface"
  s.add_development_dependency "sqlite3"
end
