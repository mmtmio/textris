lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'textris/version'

Gem::Specification.new do |spec|
  spec.name     = 'textris'
  spec.version  = Textris::VERSION
  spec.authors  = ['Visuality', 'Karol Słuszniak']
  spec.email    = 'contact@visuality.pl'
  spec.homepage = 'http://github.com/visualitypl/textris'
  spec.license  = 'MIT'
  spec.platform = Gem::Platform::RUBY

  spec.summary = 'Simple SMS messaging gem for Rails based on concepts and conventions similar to ActionMailer, with some extra features.'

  spec.description = "Implement texter classes for sending SMS messages in similar way to how e-mails are sent with ActionMailer-based mailers. Take advantage of e-mail proxying and enhanced phone number parsing, among others."

  spec.files            = Dir["lib/**/*.rb"]
  spec.extra_rdoc_files = ["README.md"]
  spec.test_files       = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths    = ["lib"]

  spec.add_development_dependency 'ostruct'
  spec.add_development_dependency 'rails',         '>= 7.2'
  spec.add_development_dependency 'rake',          '>= 13'
  spec.add_development_dependency 'rspec',         '~> 3.13'
  spec.add_development_dependency 'rspec-sidekiq', '>= 5'
  spec.add_development_dependency 'simplecov',     '~> 0.22'
  spec.add_development_dependency 'twilio-ruby',   '~> 7.0'

  spec.add_runtime_dependency 'actionmailer',  '>= 4.0'
  spec.add_runtime_dependency 'activejob',     '>= 4.2'
  spec.add_runtime_dependency 'activesupport', '>= 4.2'
  spec.add_runtime_dependency 'phony',         '~> 2.8'
end
