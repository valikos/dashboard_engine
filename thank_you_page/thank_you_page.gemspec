$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "thank_you_page/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "thank_you_page"
  s.version     = ThankYouPage::VERSION
  s.authors     = ["Valentine Ostakh"]
  s.email       = ["valikos.ost@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "Thank you page"
  s.description = "Page with comments for guests"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.0.2"

  s.add_development_dependency "sqlite3"
end
