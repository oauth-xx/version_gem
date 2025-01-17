# frozen_string_literal: true

RSpec.describe(VersionGem) do
  it "is a module" do
    expect(described_class).is_a?(Module)
  end

  it "extends Version with Basic" do
    expect(described_class::Version).is_a?(VersionGem::Basic)
  end
end
