# frozen_string_literal: true

DEBUG = ENV.fetch("DEBUG", nil) == "true"
DEBUG_IDE = ENV.fetch("DEBUG_IDE", "false") == "true"

# RSpec Configs
require_relative "config/byebug"
require_relative "config/rspec/rspec_core"
require_relative "config/rspec/rspec_block_is_expected"

# RSpec Helpers which do not depend on gem internals
require_relative "helpers/faux"

# Last thing before this gem is code coverage:
begin
  # kettle-soup-cover does not require "simplecov", but
  #   we do that next, and that has a side effect of running `.simplecov`
  # Also, we must avoid loading "version_gem" (this gem) via "kettle-soup-cover",
  #   so instead of the normal kettle-soup-cover we use kettle/soup/cover.
  require "kettle/soup/cover"
  require "simplecov" if defined?(Kettle) && Kettle::Soup::Cover::DO_COV
rescue LoadError
  nil
end

# This gem
require "version_gem"

# RSpec Helpers from this gem
require "version_gem/rspec"

# RSpec Helpers which depend on gem internals
require_relative "helpers/under_test"
require_relative "helpers/epoch_test"
