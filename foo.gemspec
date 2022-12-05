# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'foo/version'

Gem::Specification.new do |s|
  s.name = 'foo'
  s.version = Foo::VERSION
  s.authors = ['Foo Bar']
  s.summary = 'foo gem'
  s.description = 'Test gem for release-please'
  s.files = Dir['lib/**/*', 'CHANGELOG.md', 'README.md']
  s.require_paths = ['lib']
  s.bindir = 'exe'

  # rubocop:disable Gemspec/RequiredRubyVersion
  s.required_ruby_version = '>= 3.0.3'
  # rubocop:enable Gemspec/RequiredRubyVersion

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rubocop'
end
