class WeatherLookup

  attr_accessor :temperature, :icon, :today_text, :tonight_text, :state, :city

  def initialize(state,city)
  	self.state = state
  	self.city = city
  	# self.state = "OR" if state.blank?
  	# self.city = "Portland" if city.blank?
    conditions_hash = fetch_conditions(state,city)
    forecast_hash = fetch_forecast(state,city)
    assign_conditions(conditions_hash)
    assign_forecast(forecast_hash)
    verify_attributes
  end

  # private
  
  # def fetch_conditions(state,city)
  #   HTTParty.get("http://api.wunderground.com/api/5f882a1b3107cc1e/conditions/q/#{state}/#{city}.json")
  # 	#http://api.wunderground.com/api/5f882a1b3107cc1e/conditions/q/OR/Portland.json

  # end

  # def fetch_forecast(state,city)
  # 	HTTParty.get("http://api.wunderground.com/api/5f882a1b3107cc1e/forecast/q/#{state}/#{city}.json")
  # 	#http://api.wunderground.com/api/5f882a1b3107cc1e/forecast/q/OR/Portland.json
  # end

  # def assign_conditions(conditions_hash)
  #   hourly_forecast_response = conditions_hash['current_observation']
  #   self.temperature = hourly_forecast_response['temp_f']
  #   self.icon = hourly_forecast_response['icon_url']
  # end

  # def assign_forecast(forecast_hash)
  # 	daily_forecast_response = forecast_hash['forecast']['txt_forecast']['forecastday']

  # 	# 2.times do |i|
  # 		self.today_text = daily_forecast_response[0]['fcttext']
  # 		self.tonight_text = daily_forecast_response[1]['fcttext']
  # 	# end
  # end

  # def verify_attributes
  #   self.temperature = "Temp unavailable"          if self.temperature.blank? 
  #   self.icon        = "http://cool.com/image.jpg" if self.icon.blank?
  #   self.state       = "OR"                        if self.state.blank?
  #   self.city        = "Portland"                  if self.city.blank?
  # end

end