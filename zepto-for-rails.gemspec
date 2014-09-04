$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem"s version:
require "zepto/rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "zepto-for-rails"
  s.version     = Zepto::Rails::VERSION
  s.authors     = ["Stefan Vermaas"]
  s.email       = ["stefan@yellowduckwebdesign.nl"]
  s.homepage    = "https://github.com/stefanvermaas/zepto-rails"
  s.summary     = "Zepto.js for the rails asset pipeline"
  s.description = "Provides a the zepto.js for the rails asset pipeline"
  s.licenses    = ['MIT']

  s.add_runtime_dependency 'rails', '~> 3.1'

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_path = "lib"
end
