ENV['APP_ENV'] = 'test'

require './plant_index.rb'
  # require 'test/unit'
require 'rack/test'
require_relative '../spec_helper'

class PlantTest < Test::Unit::TestCase
  # include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_it_can_send_all_plants
    browser = Rack::Test::Session.new(Rack::MockSession.new(Sinatra::Application))
    browser.get "/plants"
    # require 'pry'; binding.pry
    assert browser.last_response.ok?

    # require 'pry'; binding.pry
    parse = JSON.parse(browser.last_response.body, symbolize_names: true)
    assert_equal Array, parse.class
  end

# describe 'All plants are shown' do
#   it 'displays all plants in the API', :vcr do
#
#     expect(response).to be(successful)
#   end
end
