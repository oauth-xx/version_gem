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
      segs = RUBY_VER.segments
      major.to_i == segs[0] &&
        minor.to_i == segs[1] &&
        ::RUBY_ENGINE == engine
    end
    module_function :actual_minor_version?
  end
end
