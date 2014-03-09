require 'spec_helper'
require 'rtfm'

describe RTFM do
  it "serves documentation" do
    expect(RTFM).to be_a(Module)
  end
end
