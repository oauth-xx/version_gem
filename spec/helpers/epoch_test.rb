# If your version file will be required by a gemspec, do not do this, instead follow README.md#usage
module EpochTest
  VERSION = "3012.34.56.pre-78"
end

EpochTest.class_eval do
  extend VersionGem::Epoch
end
