# frozen_string_literal: true

# external gems
require 'rspec/block_is_expected'

# RSpec Helpers from this gem
require 'version_gem/rspec'
# Ruby Helpers from this gem (use load because we want line coverage)
load 'version_gem/ruby.rb'

# RSpec Configs
require 'config/rspec/rspec_core'

DEBUG = ENV['DEBUG'] == 'true'

debugging = VersionGem::Ruby.gte_minimum_version?('2.7') && DEBUG
RUN_COVERAGE = VersionGem::Ruby.gte_minimum_version?('2.6') && (ENV['COVER_ALL'] || ENV['CI_CODECOV'] || ENV['CI'].nil?)
ALL_FORMATTERS = VersionGem::Ruby.actual_minor_version?(2, 7) && (ENV['COVER_ALL'] || ENV['CI_CODECOV'] || ENV['CI'])
VersionGem::Ruby.send(:remove_const, :RUBY_VER)

if DEBUG
  if debugging
    require 'byebug'
  elsif minimum_version.call('2.7', 'jruby')
    require 'pry-debugger-jruby'
  end
end

if RUN_COVERAGE
  require 'simplecov' # Config file `.simplecov` is run immediately when simplecov loads
  require 'codecov'
  require 'simplecov-json'
  require 'simplecov-lcov'
  require 'simplecov-cobertura'
  # This will override any formatter set in .simplecov
  if ALL_FORMATTERS
    SimpleCov::Formatter::LcovFormatter.config do |c|
      c.report_with_single_file = true
      c.single_report_path = 'coverage/lcov.info'
    end

    SimpleCov.formatters = [
      SimpleCov::Formatter::HTMLFormatter,
      SimpleCov::Formatter::CoberturaFormatter, # XML for Jenkins
      SimpleCov::Formatter::LcovFormatter,
      SimpleCov::Formatter::JSONFormatter, # For CodeClimate
      SimpleCov::Formatter::Codecov # For CodeCov
    ]
  end
else
  puts "Not running coverage on #{RUBY_ENGINE} #{RUBY_VERSION}"
end

require 'version_gem'
