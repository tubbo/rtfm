require 'spec_helper'

module RTFM
  describe Documentation do
    subject { Documentation.all }

    it "saves the string passed into new as base" do
      expect(subject.base).to eq('spec/fixtures')
    end

    it "positions itself as a way to enumerate path names" do
      expect(subject.first).to_not be_nil
    end

    it "finds all dirs in the base public path" do
      expect(subject.send(:public_dirs)).to include('spec/fixtures/example')
    end

    it "parses out app names from dir paths" do
      expect(subject).to include('example')
    end
  end
end
