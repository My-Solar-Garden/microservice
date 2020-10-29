class Plant
  attr_reader :image,
              :name,
              :species,
              :description,
              :light_requirements,
              :water_requirements,
              :when_to_plant,
              :harvest_time,
              :common_pests

  def initialize(attributes)
    @image = attributes[:image]
    @name = attributes[:name]
    @species = attributes[:species]
    @description = attributes[:description]
    @light_requirements = attributes[:light_requirements]
    @water_requirements = attributes[:water_requirements]
    @when_to_plant = attributes[:when_to_plant]
    @harvest_time = attributes[:harvest_time]
    @common_pests = attributes[:common_pests]
  end
end
