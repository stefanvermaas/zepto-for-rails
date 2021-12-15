# frozen_string_literal: true

require 'zepto_for_rails/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'zepto-for-rails'
  s.version     = ZeptoForRails::VERSION
  s.authors     = ['Stefan Vermaas']
  s.email       = ['stefanvermaas@pm.me']
  s.homepage    = 'https://github.com/stefanvermaas/zepto-for-rails'
  s.summary     = 'Zepto.js for the rails asset pipeline'
  s.description = 'Provides a the zepto.js for the rails asset pipeline'
  s.licenses    = ['MIT']
  s.required_ruby_version = Gem::Requirement.new('>= 2.5')

  s.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end

  s.bindir        = 'bin'
  s.executables   = s.files.grep(%r{\bin/}) { |f| File.basename(f) }
  s.require_paths = %w[lib]

  # Runtime dependencies
  s.add_runtime_dependency 'rails', '> 4'
end
