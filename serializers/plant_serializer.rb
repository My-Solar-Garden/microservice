class PlantSerializer
  include FastJsonapi::ObjectSerializer

  attributes :image,
              :name,
              :species,
              :description,
              :light_requirements,
              :water_requirements,
              :when_to_plant,
              :harvest_time,
              :common_pests

end 
