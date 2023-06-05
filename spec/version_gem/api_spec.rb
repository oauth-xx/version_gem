# frozen_string_literal: true

RSpec.describe(VersionGem::Api) do
  context "when under test" do
    subject(:under_test) { UnderTest }

    it_behaves_like "a Version module", UnderTest

    it "is greater than 0.1.0" do
      expect(Gem::Version.new(under_test) > Gem::Version.new("0.1.0")).to(be(true))
    end

    it "major version is an integer" do
      expect(under_test.major).to(eq(12))
    end

    it "minor version is an integer" do
      expect(under_test.minor).to(eq(34))
    end

    it "patch version is an integer" do
      expect(under_test.patch).to(eq(56))
    end

    it "pre version is an string" do
      expect(under_test.pre).to(eq("pre-78"))
    end

    it "returns a Hash" do
      expect(under_test.to_h).to(eq(major: 12, minor: 34, patch: 56, pre: "pre-78"))
    end

    it "returns an Array" do
      expect(under_test.to_a).to(eq([12, 34, 56, "pre-78"]))
    end
  end
end
