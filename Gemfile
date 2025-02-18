# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }
git_source(:gitlab) { |repo_name| "https://gitlab.com/#{repo_name}" }

#### IMPORTANT #######################################################
# Gemfile is for local development ONLY; Gemfile is NOT loaded in CI #
####################################################### IMPORTANT ####

# Include dependencies from <gem name>.gemspec
gemspec

platform :mri do
  # Debugging
  gem "byebug", ">= 11"
end

# Security Audit
if RUBY_VERSION >= "3"
  # NOTE: Audit fails on Ruby 2.7 because nokogiri has dropped support for Ruby < 3
  # See: https://github.com/sparklemotion/nokogiri/security/advisories/GHSA-r95h-9x8f-r3f7
  # We can't add upgraded nokogiri here unless we are developing on Ruby 3+
  eval_gemfile "gemfiles/modular/audit.gemfile"
end

# Code Coverage
eval_gemfile "gemfiles/modular/coverage.gemfile"

# Linting
eval_gemfile "gemfiles/modular/style.gemfile"

# Documentation
eval_gemfile "gemfiles/modular/documentation.gemfile"

gem "appraisal", github: "pboling/appraisal", branch: "eval_gemfile"
