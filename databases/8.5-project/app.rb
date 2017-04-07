require_relative 'data_service'
require_relative 'weather_data'

ds = DataService.new

puts 'Here is your list of favorite cities:'
all = ds.select_all
ds.print_results(all)

print 'Enter a city: '
city = gets.chomp.strip

ds.add_city(city)

weather_data = WeatherData.new(city)

if weather_data.get_weather
  weather_data.print_weather_info
else
  puts 'error - not a valid city'
end
