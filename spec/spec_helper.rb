# frozen_string_literal: true

DEBUG = ENV.fetch("DEBUG", nil) == "true"
DEBUG_IDE = ENV.fetch("DEBUG_IDE", "false") == "true"

# Ruby Helpers from this gem.
# - Not requiring because we want line coverage
# - Not loading because we don't want to manage the constant re-definition
module VersionGem
  # Helpers for library CI integration against many different versions of Ruby
  module Faux
    RUBY_VER = ::Gem::Version.new(RUBY_VERSION)

    def gte_minimum_version?(version, engine = "ruby")
      RUBY_VER >= ::Gem::Version.new(version) && ::RUBY_ENGINE == engine
    end
    module_function :gte_minimum_version?

    def actual_minor_version?(major, minor, engine = "ruby")
      major.to_i == RUBY_VER.segments[0] &&
        minor.to_i == RUBY_VER.segments[1] &&
        ::RUBY_ENGINE == engine
    end
    module_function :actual_minor_version?
  end
end

# RSpec Helpers from this gem
require "version_gem/rspec"

engine = "ruby"
major = 2
minor = 7
version = "#{major}.#{minor}"
gte_min = VersionGem::Faux.gte_minimum_version?(version, engine)
actual_minor = VersionGem::Faux.actual_minor_version?(major, minor, engine)

DEBUGGING = gte_min && DEBUG
DEBUG_JRUBY = VersionGem::Faux.gte_minimum_version?(version, "jruby")
RUN_COVERAGE = gte_min && (ENV.fetch("COVER_ALL", nil) || ENV.fetch("CI_CODECOV", nil) || ENV["CI"].nil?)
ALL_FORMATTERS = (gte_min && ENV.fetch("COVER_ALL", nil)) ||
  (actual_minor && (ENV.fetch("CI_CODECOV", nil) || ENV.fetch("CI", nil)))

# RSpec Configs
require "config/rspec/rspec_core"
require "config/rspec/rspec_block_is_expected"
require "config/debug"

# Load Code Coverage as the last thing before this gem
if RUN_COVERAGE
  require "simplecov" # Config file `.simplecov` is run immediately when simplecov loads
end

# This gem
require "version_gem"

# RSpec Helpers
require "helpers/under_test"
