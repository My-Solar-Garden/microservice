require './plants.rb'
require './spec/spec_helper'

class PlantAPIExposureTest < Test::Unit::TestCase
  def app
    Sinatra::Application
  end

  def test_it_can_send_all_plants
    browser = Rack::Test::Session.new(Rack::MockSession.new(Sinatra::Application))
    browser.get "/plants"

    assert browser.last_response.ok?

    parsed = JSON.parse(browser.last_response.body, symbolize_names: true)
    assert_equal Array, parsed.class
    assert_equal Hash, parsed[0].class

    parsed[0].has_key?(:id)
    assert_equal Integer, parsed[0][:id].class

    parsed[0].has_key?(:name)
    assert_equal String, parsed[0][:name].class

    parsed[0].has_key?(:description)
    assert_equal String, parsed[0][:description].class

    parsed[0].has_key?(:optimal_sun)
    assert_equal String, parsed[0][:optimal_sun].class

    parsed[0].has_key?(:optimal_soil)
    assert_equal String, parsed[0][:optimal_soil].class

    parsed[0].has_key?(:planting_considerations)
    assert_equal String, parsed[0][:planting_considerations].class

    parsed[0].has_key?(:when_to_plant)
    assert_equal String, parsed[0][:when_to_plant].class

    parsed[0].has_key?(:growing_from_seed)
    assert_equal String, parsed[0][:growing_from_seed].class

    parsed[0].has_key?(:transplanting)
    assert_equal String, parsed[0][:transplanting].class

    parsed[0].has_key?(:spacing)
    assert_equal String, parsed[0][:spacing].class

    parsed[0].has_key?(:watering)
    assert_equal String, parsed[0][:watering].class

    parsed[0].has_key?(:feeding)
    assert_equal String, parsed[0][:feeding].class

    parsed[0].has_key?(:other_care)
    assert_equal String, parsed[0][:other_care].class

    parsed[0].has_key?(:diseases)
    assert_equal String, parsed[0][:diseases].class

    parsed[0].has_key?(:pests)

    parsed[0].has_key?(:harvesting)
    assert_equal String, parsed[0][:harvesting].class

    parsed[0].has_key?(:storage_use)
    assert_equal String, parsed[0][:storage_use].class

    parsed[0].has_key?(:image_url)
    assert_equal String, parsed[0][:image_url].class
  end

  def test_it_can_search_all_plants
    browser = Rack::Test::Session.new(Rack::MockSession.new(Sinatra::Application))
    browser.get "/plants/search?term=tom"

    assert browser.last_response.ok?
    parsed = JSON.parse(browser.last_response.body, symbolize_names: true)
    assert_equal Array, parsed.class
    assert_equal Hash, parsed[0].class

    parsed[0].has_key?(:id)
    assert_equal Integer, parsed[0][:id].class

    parsed[0].has_key?(:name)
    assert_equal String, parsed[0][:name].class

    parsed[0].has_key?(:description)
    assert_equal String, parsed[0][:description].class

    parsed[0].has_key?(:optimal_sun)
    assert_equal String, parsed[0][:optimal_sun].class

    parsed[0].has_key?(:optimal_soil)
    assert_equal String, parsed[0][:optimal_soil].class

    parsed[0].has_key?(:planting_considerations)
    assert_equal String, parsed[0][:planting_considerations].class

    parsed[0].has_key?(:when_to_plant)
    assert_equal String, parsed[0][:when_to_plant].class

    parsed[0].has_key?(:growing_from_seed)
    assert_equal String, parsed[0][:growing_from_seed].class

    parsed[0].has_key?(:transplanting)
    assert_equal String, parsed[0][:transplanting].class

    parsed[0].has_key?(:spacing)
    assert_equal String, parsed[0][:spacing].class

    parsed[0].has_key?(:watering)
    assert_equal String, parsed[0][:watering].class

    parsed[0].has_key?(:feeding)
    assert_equal String, parsed[0][:feeding].class

    parsed[0].has_key?(:other_care)
    assert_equal String, parsed[0][:other_care].class

    parsed[0].has_key?(:diseases)
    assert_equal String, parsed[0][:diseases].class

    parsed[0].has_key?(:pests)

    parsed[0].has_key?(:harvesting)
    assert_equal String, parsed[0][:harvesting].class

    parsed[0].has_key?(:storage_use)
    assert_equal String, parsed[0][:storage_use].class

    parsed[0].has_key?(:image_url)
    assert_equal String, parsed[0][:image_url].class
  end
end
