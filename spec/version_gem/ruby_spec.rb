# frozen_string_literal: true

# Not loaded by the gem by default, so loaded here:
require "version_gem/ruby"

RSpec.describe(VersionGem::Ruby) do
  let(:engine) { "ruby" }

  it "is a module" do
    expect(described_class).is_a?(Module)
  end

  describe "#gte_minimum_version?" do
    subject(:gte_minimum_version) { described_class.gte_minimum_version?(version, engine) }

    let(:version) { RUBY_VERSION }

    it "returns true when current ruby greater than minimum" do
      expect(gte_minimum_version).to(be(true))
    end

    context "when not gte minimum" do
      let(:version) { "99.0.0" }

      it "returns false when current ruby not greater than minimum" do
        expect(gte_minimum_version).to(be(false))
      end
    end
  end

  describe "#actual_minor_version?" do
    subject(:actual_minor_version) { described_class.actual_minor_version?(major, minor, engine) }

    let(:major) { "1" }
    let(:minor) { "8" }

    it "returns false when actual ruby not same" do
      expect(actual_minor_version).to(be(false))
    end

    context "when actual" do
      let(:ruby_ver) { VersionGem::Ruby::RUBY_VER }
      let(:major) { ruby_ver.segments[0] }
      let(:minor) { ruby_ver.segments[1] }

      it "returns true" do
        expect(actual_minor_version).to(be(true))
      end
    end
  end
end
