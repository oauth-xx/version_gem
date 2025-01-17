require "rspec/block_is_expected"

# This breaks RSpec v2, which may be used to run transpec.
# So allow it to be turned off.
require "rspec/block_is_expected/matchers/not" unless ENV["TRANSPEC"] == "true"
