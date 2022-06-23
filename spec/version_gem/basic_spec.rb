# frozen_string_literal: true

# If your version file will be required by a gemspec, do not do this, instead follow README.md#usage

RSpec.describe VersionGem::Basic do
  it 'raises when no VERSION' do
    expect {
      Module.new do
        extend VersionGem::Basic
      end
    }.to raise_error(VersionGem::Error, "VERSION must be defined before 'extend VersionGem::Basic'")
  end
end
