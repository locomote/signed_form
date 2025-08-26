# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'signed_form/version'

Gem::Specification.new do |spec|
  spec.name          = "signed_form"
  spec.version       = SignedForm::VERSION
  spec.authors       = ["Erich Menge", "Johnneylee Jack Rollins"]
  spec.email         = ["erichmenge@gmail.com", "Johnneylee.Rollins@gmail.com"]
  spec.description   = %q{Rails signed form security}
  spec.summary       = %q{Rails signed form security}
  spec.homepage      = "https://github.com/erichmenge/signed_form"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", RUBY_VERSION < "2.5" ? "~> 1.0" : "~> 2.0"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.13"
  spec.add_development_dependency "activemodel", ">= 4.2"
  spec.add_development_dependency "concurrent-ruby", "1.3.4"
  spec.add_development_dependency "bigdecimal" if RUBY_VERSION >= "3.4" && ENV["RAILS_VERSION"] == "~> 7.0.0"
  spec.add_development_dependency "drb"        if RUBY_VERSION >= "3.4" && ENV["RAILS_VERSION"] == "~> 7.0.0"
  spec.add_development_dependency "mutex_m"    if RUBY_VERSION >= "3.4" && ENV["RAILS_VERSION"] == "~> 7.0.0"
  spec.add_development_dependency "pry-byebug"

  spec.add_dependency "actionpack", ">= 4.2"
  spec.add_dependency "psych", ">= 2.0"
  spec.add_dependency "loofah", "2.20.0" if RUBY_VERSION < "2.5"

  spec.required_ruby_version = '>= 2.4'
end
