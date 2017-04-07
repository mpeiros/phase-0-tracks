require_relative 'data_service'
require_relative 'weather_data'

ds = DataService.new

p ds.select_all

print 'Enter a city: '
city = gets.chomp.strip

ds.add_city(city)

weather_data = WeatherData.new(city)

if weather_data.get_weather
  p weather_data.city, weather_data.weather_description, weather_data.temperature, weather_data.humidity, weather_data.wind_speed
else
  puts 'error - not a valid city'
end
