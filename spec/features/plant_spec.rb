require './plants.rb'
require './spec/spec_helper'

class PlantAPIConsumptionTest < Test::Unit::TestCase
  def test_it_can_fetch_all_plants
    VCR.use_cassette('fetch_all_plants') do
      conn

      assert_equal Array, conn.class
      assert_equal Hash, conn[0].class

      conn[0].has_key?(:id)
      assert_equal Integer, conn[0][:id].class

      conn[0].has_key?(:name)
      assert_equal String, conn[0][:name].class

      conn[0].has_key?(:description)
      assert_equal String, conn[0][:description].class

      conn[0].has_key?(:optimal_sun)
      assert_equal String, conn[0][:optimal_sun].class

      conn[0].has_key?(:optimal_soil)
      assert_equal String, conn[0][:optimal_soil].class

      conn[0].has_key?(:planting_considerations)
      assert_equal String, conn[0][:planting_considerations].class

      conn[0].has_key?(:when_to_plant)
      assert_equal String, conn[0][:when_to_plant].class

      conn[0].has_key?(:growing_from_seed)
      assert_equal String, conn[0][:growing_from_seed].class

      conn[0].has_key?(:transplanting)
      assert_equal String, conn[0][:transplanting].class

      conn[0].has_key?(:spacing)
      assert_equal String, conn[0][:spacing].class

      conn[0].has_key?(:watering)
      assert_equal String, conn[0][:watering].class

      conn[0].has_key?(:feeding)
      assert_equal String, conn[0][:feeding].class

      conn[0].has_key?(:other_care)
      assert_equal String, conn[0][:other_care].class

      conn[0].has_key?(:diseases)
      assert_equal String, conn[0][:diseases].class

      conn[0].has_key?(:pests)

      conn[0].has_key?(:harvesting)
      assert_equal String, conn[0][:harvesting].class

      conn[0].has_key?(:storage_use)
      assert_equal String, conn[0][:storage_use].class

      conn[0].has_key?(:image_url)
      assert_equal String, conn[0][:image_url].class
   end
  end
end
