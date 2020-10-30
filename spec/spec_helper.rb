ENV["SINATRA_ENV"] = "test"

require 'simplecov'

SimpleCov.start 'rails' do
  add_filter '/config/'
  add_filter '/spec/'
end

require 'shoulda-matchers'
require 'capybara/dsl'
require 'rack/test'
require 'test/unit'
require 'rspec'
require 'webmock/rspec'
require 'vcr'

#
# if ActiveRecord::Migrator.needs_migration?
#   raise 'Migrations are pending. Run `rake db:migrate SINATRA_ENV=test` to resolve the issue.'
# end
#
# ActiveRecord::Base.logger = nil

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.include Rack::Test::Methods

  config.order = 'default'
end
#
# def app
#   Rack::Builder.parse_file('config.ru').first
# end
# Shoulda::Matchers.configure do |config|
#   config.integrate do |with|
#     with.test_framework :rspec
#     # with.library :sinatra
#   end
# end

VCR.configure do |config|
  config.cassette_library_dir = "spec/fixtures/vcr_cassettes"
  config.hook_into :webmock
  config.configure_rspec_metadata!
  config.allow_http_connections_when_no_cassette = true
end