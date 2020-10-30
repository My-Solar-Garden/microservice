require 'sinatra'
require 'faraday'
require 'fast_jsonapi'

require './poros/plant'

get '/plants' do
  response = Faraday.get("http://harvesthelper.herokuapp.com/api/v1/plants?api_key=#{ENV['PLANT-API-KEY']}")
  results = JSON.parse(response.body, symbolize_names: true)

  results.to_json
end
