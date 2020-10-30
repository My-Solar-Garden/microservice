require 'sinatra'
require 'faraday'
require 'fast_jsonapi'

require './poros/plant'

def conn
  response = Faraday.get("http://harvesthelper.herokuapp.com/api/v1/plants?api_key=117050ef67998cb1747b93f65d4288f1")
  # response = Faraday.get("http://harvesthelper.herokuapp.com/api/v1/plants?api_key=#{ENV['PLANTS_API_KEY']}")

  results = JSON.parse(response.body, symbolize_names: true)
end

get '/plants' do
  conn.to_json
end
