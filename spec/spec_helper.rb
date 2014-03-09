$LOAD_PATH << File.expand_path('../lib')

require 'bundler/setup'
require 'rspec'
require 'rtfm'

RSpec.configure do |config|
  # Ensure we use the test dirs.
  RTFM.base_dir = "spec/fixtures"
end
