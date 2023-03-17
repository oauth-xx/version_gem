# frozen_string_literal: true

# Not loaded by the gem by default, so loaded here:
require 'version_gem/ruby'

RSpec.describe VersionGem::Ruby do
  it 'is a module' do
    expect(described_class).is_a?(Module)
  end

  let(:engine) { 'ruby' }

  describe '#gte_minimum_version?' do
    let(:version) { ::RUBY_VERSION }

    subject(:gte_minimum_version) { described_class.gte_minimum_version?(version, engine) }

    it 'returns true when current ruby greater than minimum' do
      expect(gte_minimum_version).to eq(true)
    end

    context 'when not gte minimum' do
      let(:version) { '99.0.0' }
      it 'returns false when current ruby not greater than minimum' do
        expect(gte_minimum_version).to eq(false)
      end
    end
  end

  describe '#actual_minor_version?' do
    let(:major) { '1' }
    let(:minor) { '8' }

    subject(:actual_minor_version) { described_class.actual_minor_version?(major, minor, engine) }

    it 'returns false when actual ruby not same' do
      expect(actual_minor_version).to eq(false)
    end

    context 'when actual' do
      let(:major) { '2' }
      let(:minor) { '7' }
      it 'returns true' do
        expect(actual_minor_version).to eq(true)
      end
    end
  end
end
