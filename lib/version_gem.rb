# frozen_string_literal: true

require_relative 'version_gem/version'

module VersionGem
end

VersionGem::Version.class_eval do
  extend VersionGem::Basic
end
