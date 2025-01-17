# If your version file will be required by a gemspec, do not do this, instead follow README.md#usage
module UnderTest
  VERSION = "12.34.56.pre-78"
  extend VersionGem::Api
end
