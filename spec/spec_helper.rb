$LOAD_PATH << File.expand_path('../lib')

ENV['RACK_ENV'] = "test"
ENV['RTFM_BASE_DIR'] = "spec/fixtures"

require 'bundler/setup'
require 'rspec'
require 'rtfm'
