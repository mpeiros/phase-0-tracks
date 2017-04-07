require_relative 'data_service'
require_relative 'weather_data'

ds = DataService.new

puts 'Here is your list of favorite cities:'
all = ds.select_all
ds.print_results(all)

print 'Enter id: '
id = gets.chomp.to_i
print 'Enter city name: '
city_name = gets.chomp
ds.update_city(id, city_name)

# print 'Enter a city: '
# id = gets.chomp.to_i
# ds.delete_city(id)

# id = gets.chomp.to_i
# city = ds.get_city(id)

# city = gets.chomp.strip
# ds.add_city(city)

# weather_data = WeatherData.new(city)

# if weather_data.get_weather
#   weather_data.print_weather_info
# else
#   puts 'error - not a valid city'
# end
