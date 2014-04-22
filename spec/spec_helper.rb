$LOAD_PATH << File.expand_path('../lib')

ENV['RACK_ENV'] = "test"
ENV['RTFM_BASE_DIR'] = "spec/fixtures"

require 'bundler/setup'
require 'rspec'
require 'capybara'
require 'capybara/rspec'
require 'capybara/poltergeist'
require 'rtfm'

Capybara.app = RTFM::Application
Capybara.javascript_driver = :poltergeist
