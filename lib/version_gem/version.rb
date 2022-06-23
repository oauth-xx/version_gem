# frozen_string_literal: true

require_relative 'basic'

module VersionGem
  module Version
    VERSION = '1.0.1'.freeze
    # This would work in this gem, but not in external libraries,
    #   because version files are loaded in Gemspecs before bundler
    #   has a chance to load dependencies.
    # Instead, see lib/version_gem.rb for a solution that will work everywhere
    # extend VersionGem::Basic
  end
end
