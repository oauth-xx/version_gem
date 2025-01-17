# frozen_string_literal: true

begin
  # This does not require "simplecov",
  #   because that has a side-effect of running `.simplecov`
  # Avoid loading version_gem via "kettle-soup-cover":
  require "kettle/soup/cover"
rescue LoadError
  puts "Not running code coverage"
end

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

# RSpec Configs
require_relative "config/rspec/rspec_core"
require_relative "config/rspec/rspec_block_is_expected"

# RSpec Helpers which do not depend on gem internals
# NONE

# Last thing before this gem is code coverage:
require "simplecov" if defined?(Kettle) && Kettle::Soup::Cover::DO_COV

# This gem
require "version_gem"

# RSpec Helpers from this gem
require "version_gem/rspec"

# RSpec Helpers which depend on gem internals
require_relative "helpers/under_test"
