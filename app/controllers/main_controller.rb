class MainController < ApplicationController
  
  def index
  	@w_api = Wunderground.new("5f882a1b3107cc1e")
  	 #@weather_lookup = WeatherLookup.new("OR","Portland")
  	 #@weather_lookups = WeatherLookup.new(params[:state],params[:city])

  end
end
