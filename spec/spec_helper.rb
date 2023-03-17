# frozen_string_literal: true

# external gems
require 'rspec/block_is_expected'

# RSpec Helpers from this gem
require 'version_gem/rspec'

# RSpec Configs
require 'config/rspec/rspec_core'

DEBUG = ENV['DEBUG'] == 'true'

ruby_version = Gem::Version.new(RUBY_VERSION)
minimum_version = ->(version, engine = 'ruby') { ruby_version >= Gem::Version.new(version) && RUBY_ENGINE == engine }
actual_version = lambda do |major, minor|
  actual = Gem::Version.new(ruby_version)
  major == actual.segments[0] && minor == actual.segments[1] && RUBY_ENGINE == 'ruby'
end
debugging = minimum_version.call('2.7') && DEBUG
RUN_COVERAGE = minimum_version.call('2.6') && (ENV['COVER_ALL'] || ENV['CI_CODECOV'] || ENV['CI'].nil?)
ALL_FORMATTERS = actual_version.call(2, 7) && (ENV['COVER_ALL'] || ENV['CI_CODECOV'] || ENV['CI'])

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
