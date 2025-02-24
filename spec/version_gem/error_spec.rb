# frozen_string_literal: true

RSpec.describe(VersionGem::Error) do
  it "is a standard error" do
    expect(described_class).to be_a(StandardError)
  end

  describe "raise" do
    subject(:raising) { raise(described_class, "moo") }

    it "can be raised" do
      block_is_expected.to raise_error(described_class, "moo")
    end
  end
end
