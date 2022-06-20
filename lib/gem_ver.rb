# frozen_string_literal: true

require_relative 'gem_ver/version'

module GemVer
end

GemVer::Version.class_eval do
  extend GemVer::Basic
end
