# frozen_string_literal: true

RSpec.describe(VersionGem::Error) do
  it "is a standard error" do
    expect(described_class).is_a?(StandardError)
  end

  it "can be raised" do
    expect { raise(described_class, "moo") }.to(raise_error(described_class, "moo"))
  end
end
