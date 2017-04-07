require_relative 'data_service'
require_relative 'weather_data'

# Helper print method
def options_menu
  puts "\nSelect one of the following options:"
  puts 'Enter 1 to add a city to your list and get its weather information'
  puts 'Enter 2 to get weather information for a city on your list'
  puts 'Enter 3 to update a city on your list'
  puts 'Enter 4 to delete a city from your list' 
  puts "Enter 'q' to quit"
end

# Instantiate data service to handle SQL database
ds = DataService.new

# Driver code
loop do
  puts "\nYour list of favorite cities:"
  all_cities = ds.select_all
  ds.print_results(all_cities)
  options_menu

  print "\nEnter your choice: "
  user_choice = gets.chomp
  break if user_choice == 'q'

  case user_choice.to_i
  when 1
    puts 'Selected 1'
  when 2
    puts 'Selected 2'
  when 3
    puts 'Selected 3'
  when 4
    puts 'Selected 4'
  else
    puts 'Please enter a valid option!'
  end
end

puts "\nSee you next time!"

# print "\nEnter id:"
# id = gets.chomp.to_i
# print 'Enter city name: '
# city_name = gets.chomp
# ds.update_city(id, city_name)

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
