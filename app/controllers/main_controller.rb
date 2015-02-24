class MainController < ApplicationController
  # require 'open-uri'
  # require 'json'
  
  def index
  	#http://api.wunderground.com/api/Your_Key/geolookup/q/37.776289,-122.395234.json
  	#@w_api = Wunderground.new("5f882a1b3107cc1e")
  	#@weather_lookup = WeatherLookup.new("OR","Portland")
  	#@weather_lookup2 = JSON.parse(open("http://api.wunderground.com/api/5f882a1b3107cc1e/conditions/q/OR/Portland.json").read)

  	@weather_lookup1 = WeatherLookup.new("OR","Portland")
  	@state = params[:state]
  	@city = params[:city]
    @state2 = params[:state2]
    @city2 = params[:city2]
  	@weather_lookup2 = WeatherLookup.new(params[:state],params[:city])
  	@weather_lookup3 = WeatherLookup.new(params[:state2],params[:city2])
  end

  def reset
    redirect_to root_path
  end
end
