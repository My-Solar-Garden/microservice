ENV["SINATRA_ENV"] = "test"

require 'simplecov'
require 'shoulda-matchers'
require 'capybara/dsl'
require 'test/unit'
require 'rack/test'
require 'rspec'
require 'webmock/rspec'
require 'vcr'

SimpleCov.start 'rails' do
  add_filter '/config/'
  add_filter '/spec/'
end

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.include Rack::Test::Methods

  config.order = 'default'
end

VCR.configure do |config|
  config.cassette_library_dir = "spec/fixtures/vcr_cassettes"
  config.hook_into :webmock
  config.configure_rspec_metadata!
  config.allow_http_connections_when_no_cassette = true
end