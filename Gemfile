# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }
git_source(:gitlab) { |repo_name| "https://gitlab.com/#{repo_name}" }

# Include dependencies from <gem name>.gemspec
gemspec

# rubocop:disable Layout/LeadingCommentSpace
#noinspection RbsMissingTypeSignature
RUBY_VER = Gem::Version.new(RUBY_VERSION)
#noinspection RbsMissingTypeSignature
IS_CI = ENV.fetch("CI", "false") == "true"
#noinspection RbsMissingTypeSignature
DEBUG_IDE = ENV.fetch("DEBUG_IDE", "false") == "true"
#noinspection RbsMissingTypeSignature
LOCAL_SUPPORTED = !IS_CI && Gem::Version.new("2.7") <= RUBY_VER && RUBY_ENGINE == "ruby"
# rubocop:enable Layout/LeadingCommentSpace

if LOCAL_SUPPORTED || IS_CI
  # Coverage
  eval_gemfile "./gemfiles/contexts/coverage.gemfile"

  # Linting
  eval_gemfile "./gemfiles/contexts/style.gemfile"

  # Testing
  eval_gemfile "./gemfiles/contexts/testing.gemfile"

  # Documentation
  eval_gemfile "./gemfiles/contexts/docs.gemfile"
end

# Debugging code should never run in CI
unless IS_CI
  eval_gemfile "./gemfiles/contexts/debug.gemfile"
end

eval_gemfile "./gemfiles/contexts/core.gemfile"
