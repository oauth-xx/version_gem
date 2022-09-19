# frozen_string_literal: true

require_relative 'lib/version_gem/version'

Gem::Specification.new do |spec|
  spec.cert_chain  = ['certs/pboling.pem']
  spec.signing_key = File.expand_path("~/.ssh/gem-private_key.pem") if $0 =~ /gem\z/

  spec.name = 'version_gem'
  spec.version = VersionGem::Version::VERSION
  spec.authors = ['Peter Boling']
  spec.email = ['peter.boling@gmail.com', 'oauth-ruby@googlegroups.com']

  spec.summary = 'Enhance your VERSION! Sugar for Version modules.'
  spec.description = 'Versions are good. Versions are cool. Versions will win.'
  spec.homepage = 'https://github.com/pboling/version_gem'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.2'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = "#{spec.homepage}/tree/v#{spec.version}"
  spec.metadata['changelog_uri'] = "#{spec.homepage}/blob/v#{spec.version}/CHANGELOG.md"
  spec.metadata['bug_tracker_uri'] = "#{spec.homepage}/issues"
  spec.metadata['documentation_uri'] = "https://www.rubydoc.info/gems/#{spec.name}/#{spec.version}"
  spec.metadata['wiki_uri'] = "#{spec.homepage}/wiki"
  spec.metadata['rubygems_mfa_required'] = 'true'

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir['lib/**/*.rb', 'sig/**/*.rbs', 'CHANGELOG.md', 'CODE_OF_CONDUCT.md', 'CONTRIBUTING.md',
                   'LICENSE.txt', 'README.md', 'SECURITY.md']
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Tests
  spec.add_development_dependency 'rspec'

  # Development Tasks
  spec.add_development_dependency 'rake'

  # Debugger
  spec.add_development_dependency 'pry'

  # Linting - rubocop-lts v8 is a rubocop wrapper for Ruby >= 2.2,
  #   and should only be bumped when dropping old Ruby support
  # see: https://dev.to/pboling/rubocop-lts-1e31
  spec.add_development_dependency 'rubocop-lts', ['~> 8.0', '>= 8.0.2']

  # Lint RSpec code
  spec.add_development_dependency 'rubocop-rspec'

  # Add performance linting
  spec.add_development_dependency 'rubocop-performance'
end
