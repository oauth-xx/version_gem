# frozen_string_literal: true

require_relative 'basic'

module GemVer
  module Version
    VERSION = '1.0.0'.freeze
    # Dogfood is yummy!
    extend GemVer::Basic
  end
end
