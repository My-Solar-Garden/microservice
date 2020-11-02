require 'sinatra'
require 'faraday'
require 'fast_jsonapi'

def conn
  response = Faraday.get("http://harvesthelper.herokuapp.com/api/v1/plants?api_key=117050ef67998cb1747b93f65d4288f1")
  # response = Faraday.get("http://harvesthelper.herokuapp.com/api/v1/plants?api_key=#{ENV['PLANTS_API_KEY']}")

  results = JSON.parse(response.body, symbolize_names: true)
end

get '/api/v1/plants' do
  conn.to_json
end

get '/api/v1/plants/search' do
  results = conn.find_all { |plant| plant[:name].downcase.include?(params[:search_term].downcase) }
  results.to_json
end
