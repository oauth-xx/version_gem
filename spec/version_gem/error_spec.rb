# frozen_string_literal: true

RSpec.describe(VersionGem::Error) do
  it "is a runtime error" do
    expect(described_class.new).to be_a(RuntimeError)
  end

  describe "raise" do
    subject(:raising) { raise(described_class, "moo") }

    it "can be raised" do
      block_is_expected.to raise_error(described_class, "moo")
    end
  end
end
