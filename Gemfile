# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }
git_source(:gitlab) { |repo_name| "https://gitlab.com/#{repo_name}" }

# Include dependencies from <gem name>.gemspec
gemspec

platform :mri do
  # Debugging
  gem "byebug", ">= 11"
end

# Coverage
gem "kettle-soup-cover", "~> 1.0", ">= 1.0.4"

# Linting
gem "rubocop-lts", "~> 8.1", ">= 8.1.1" # Linting for Ruby >= 2.2
gem "rubocop-packaging", "~> 0.5", ">= 0.5.2"
gem "rubocop-rspec", "~> 2.10"

# Documentation
gem "github-markup", "~> 5.0", ">= 5.0.1"
gem "rdoc", "~> 6.11"
gem "redcarpet", "~> 3.6"
gem "yard", "~> 0.9", ">= 0.9.37"
gem "yard-junk", "~> 0.0", ">= 0.0.10"
