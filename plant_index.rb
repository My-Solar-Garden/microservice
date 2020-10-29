require 'sinatra'
require 'faraday'
require 'fast_jsonapi'

require './poros/plant'

get '/plants' do
  # response = Faraday.get("http://harvesthelper.herokuapp.com/api/v1/plants?api_key=#{ENV['PLANT-API-KEY']}")
  response = Faraday.get("http://harvesthelper.herokuapp.com/api/v1/plants?api_key=117050ef67998cb1747b93f65d4288f1")
  results = JSON.parse(response.body, symbolize_names: true)

  results.to_json
end
