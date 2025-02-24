# frozen_string_literal: true

RSpec.describe(VersionGem) do
  it "is a module" do
    expect(described_class).to be_a(Module)
  end

  it "extends Version with Basic" do
    expect(described_class::Version).to be_a(VersionGem::Basic)
  end
end
