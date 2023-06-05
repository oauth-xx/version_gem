# frozen_string_literal: true

# Get the GEMFILE_VERSION without *require* "my_gem/version", for code coverage accuracy
# See: https://github.com/simplecov-ruby/simplecov/issues/557#issuecomment-825171399
load "lib/version_gem/version.rb"
gem_version = VersionGem::Version::VERSION
VersionGem::Version.send(:remove_const, :VERSION)

Gem::Specification.new do |spec|
  spec.cert_chain = ["certs/pboling.pem"]
  spec.signing_key = File.expand_path("~/.ssh/gem-private_key.pem") if $PROGRAM_NAME.end_with?("gem")

  spec.name = "version_gem"
  spec.version = gem_version
  spec.authors = ["Peter Boling"]
  spec.email = ["peter.boling@gmail.com", "oauth-ruby@googlegroups.com"]

  spec.summary = "Enhance your VERSION! Sugar for Version modules."
  spec.description = "Versions are good. Versions are cool. Versions will win."
  spec.homepage = "https://gitlab.com/oauth-xx/version_gem"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.2"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "#{spec.homepage}/-/tree/v#{spec.version}"
  spec.metadata["changelog_uri"] = "#{spec.homepage}/-/blob/v#{spec.version}/CHANGELOG.md"
  spec.metadata["bug_tracker_uri"] = "#{spec.homepage}/-/issues"
  spec.metadata["documentation_uri"] = "https://www.rubydoc.info/gems/#{spec.name}/#{spec.version}"
  spec.metadata["wiki_uri"] = "#{spec.homepage}/-/wiki"
  spec.metadata["mailing_list_uri"] = "https://groups.google.com/g/oauth-ruby"
  spec.metadata["funding_uri"] = "https://liberapay.com/pboling"
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.files = Dir[
    "lib/**/*",
    "CHANGELOG.md",
    "CODE_OF_CONDUCT.md",
    "CONTRIBUTING.md",
    "LICENSE.txt",
    "README.md",
    "SECURITY.md",
  ]
  spec.require_paths = ["lib"]

  # Tests
  spec.add_development_dependency("rspec", "~> 3.12")
  spec.add_development_dependency("rspec-block_is_expected", "~> 1.0")

  # Development Tasks
  spec.add_development_dependency("rake", "~> 13.0")

  # Dev Console
  spec.add_development_dependency("pry")

  # Linting - rubocop-lts v8 is a rubocop wrapper for Ruby >= 2.2,
  #   and should only be bumped when dropping old Ruby support
  # NOTE: it can only be installed on, and run on Ruby >= 2.7, so we add the dependency in the Gemfile.
  # see: https://rubocop-lts.gitlab.io
  # spec.add_development_dependency 'rubocop-lts', ['~> 8.1', '>= 8.1.1']
end
