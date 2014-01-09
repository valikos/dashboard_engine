$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "guest_book/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "guest_book"
  s.version     = GuestBook::VERSION
  s.authors     = ["Valentine Ostakh"]
  s.email       = ["valikos.ost@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "GuestBook."
  s.description = "GuestBook."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.0.2"

  s.add_development_dependency "sqlite3"
end
