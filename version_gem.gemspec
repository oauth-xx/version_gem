# frozen_string_literal: true

# Get the GEMFILE_VERSION without *require* "my_gem/version", for code coverage accuracy
# See: https://github.com/simplecov-ruby/simplecov/issues/557#issuecomment-2630782358
# Kernel.load because load is overloaded in RubyGems during gemspec evaluation
Kernel.load("lib/version_gem/version.rb")
gem_version = VersionGem::Version::VERSION
VersionGem::Version.send(:remove_const, :VERSION)

Gem::Specification.new do |spec|
  # Linux distros may package ruby gems differently,
  #   and securely certify them independently via alternate package management systems.
  # Ref: https://gitlab.com/oauth-xx/version_gem/-/issues/3
  # Hence, only enable signing if the cert_file is present.
  # See CONTRIBUTING.md
  default_user_cert = "certs/#{ENV.fetch("GEM_CERT_USER", ENV["USER"])}.pem"
  default_user_cert_path = File.join(__dir__, default_user_cert)
  cert_file_path = ENV.fetch("GEM_CERT_PATH", default_user_cert_path)
  cert_chain = cert_file_path.split(",")
  if cert_file_path && cert_chain.map { |fp| File.exist?(fp) }
    spec.cert_chain = cert_chain
    if $PROGRAM_NAME.end_with?("gem", "rake") && ARGV[0] == "build"
      spec.signing_key = File.expand_path("~/.ssh/gem-private_key.pem")
    end
  end

  spec.name = "version_gem"
  spec.version = gem_version
  spec.authors = ["Peter Boling"]
  spec.email = ["peter.boling@gmail.com", "oauth-ruby@googlegroups.com"]

  spec.summary = "Enhance your VERSION! Sugar for Version modules."
  spec.description = "Versions are good. Versions are cool. Versions will win."
  spec.homepage = "https://gitlab.com/oauth-xx/version_gem"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.2"

  spec.metadata["homepage_uri"] = "https://railsbling.com/tags/#{spec.name}/"
  spec.metadata["source_code_uri"] = "#{spec.homepage}/-/tree/v#{spec.version}"
  spec.metadata["changelog_uri"] = "#{spec.homepage}/-/blob/v#{spec.version}/CHANGELOG.md"
  spec.metadata["bug_tracker_uri"] = "#{spec.homepage}/-/issues"
  spec.metadata["documentation_uri"] = "https://www.rubydoc.info/gems/#{spec.name}/#{spec.version}"
  spec.metadata["wiki_uri"] = "#{spec.homepage}/-/wiki"
  spec.metadata["mailing_list_uri"] = "https://groups.google.com/g/oauth-ruby"
  spec.metadata["funding_uri"] = "https://liberapay.com/pboling"
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.files = Dir[
    # Files (alphabetical)
    "lib/**/*",
  ]
  # Automatically included with gem package, no need to list again in files.
  spec.extra_rdoc_files = Dir[
    # Files (alphabetical)
    "CHANGELOG.md",
    "CODE_OF_CONDUCT.md",
    "CONTRIBUTING.md",
    "LICENSE.txt",
    "README.md",
    "SECURITY.md",
  ]
  spec.rdoc_options += [
    "--title",
    "#{spec.name} - #{spec.summary}",
    "--main",
    "README.md",
    "--line-numbers",
    "--inline-source",
    "--quiet",
  ]
  spec.require_paths = ["lib"]

  # Tests
  spec.add_development_dependency("rspec", "~> 3.13")                   # ruby >= 0
  spec.add_development_dependency("rspec-block_is_expected", "~> 1.0")  # ruby >= 1.8.7

  # Development Tasks
  spec.add_development_dependency("rake", "~> 13.0")                    # ruby >= 2.2
  spec.add_development_dependency("stone_checksums", "~> 1.0")          # ruby >= 2.2

  # Linting - rubocop-lts v8 is a rubocop wrapper for Ruby >= 2.2,
  #   and should only be bumped when dropping old Ruby support
  # NOTE: it can only be installed on, and run on Ruby >= 2.7, so we add the dependency in the Gemfile.
  # see: https://rubocop-lts.gitlab.io
  # spec.add_development_dependency 'rubocop-lts', ['~> 8.1', '>= 8.1.1']
end
