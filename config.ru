require_relative './config/environment'
require './plant_index'
require 'figaro/sinatra'
run Sinatra::Application
