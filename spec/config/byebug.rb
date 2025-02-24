if ENV.fetch("DEBUG", "false").casecmp("true") == 0
  ruby_version = Gem::Version.create(RUBY_VERSION)
  if ruby_version < Gem::Version.create("2.7")
    # Use byebug in code
    require "byebug"
  else
    # Use binding.break, binding.b, or debugger in code
    require "debug"
  end
end
