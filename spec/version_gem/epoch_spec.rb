# frozen_string_literal: true

# If your version file will be required by a gemspec, do not do this, instead follow README.md#usage

RSpec.describe(VersionGem::Epoch) do
  it "raises when no VERSION" do
    expect do
      Module.new do
        extend VersionGem::Epoch
      end
    end.to(raise_error(VersionGem::Error, "VERSION must be defined before 'extend VersionGem::Epoch'"))
  end

  context "when under test" do
    subject(:epoch_test) { EpochTest }

    it_behaves_like "an Epoch Version module", EpochTest

    it "is greater than 0.1.0" do
      expect(Gem::Version.new(epoch_test) > Gem::Version.new("0.1.0")).to(be(true))
    end

    it "epoch version is an integer" do
      expect(epoch_test.epoch).to(eq(3))
    end

    it "major version is an integer" do
      expect(epoch_test.major).to(eq(12))
    end

    it "minor version is an integer" do
      expect(epoch_test.minor).to(eq(34))
    end

    it "patch version is an integer" do
      expect(epoch_test.patch).to(eq(56))
    end

    it "pre version is an string" do
      expect(epoch_test.pre).to(eq("pre-78"))
    end

    it "returns a Hash" do
      expect(epoch_test.to_h).to(eq(epoch: 3, major: 12, minor: 34, patch: 56, pre: "pre-78"))
    end

    it "returns an Array" do
      expect(epoch_test.to_a).to(eq([3, 12, 34, 56, "pre-78"]))
    end
  end
end
