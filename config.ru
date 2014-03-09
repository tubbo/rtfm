$LOAD_PATH << File.expand_path('./lib')

require 'bundler/setup'
require 'rack'
require 'rtfm'

# Application runner for Rack.

run RTFM::Application
