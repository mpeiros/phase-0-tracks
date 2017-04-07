require_relative 'data_service'
require_relative 'weather_data'

# Helper print method
def options_menu
  puts "\nSelect one of the following options:"
  puts 'Enter 1 to add a city to your list'
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

  db_range = (1..ds.current_count)

  case user_choice.to_i
  when 1
    print 'Enter the city you wish to add: '
    city = gets.chomp.strip
    ds.add_city(city)
  when 2
    print 'Enter the number of the city you wish to get weather information for: '
    id = gets.chomp.to_i
    if db_range.include?(id)
      city = ds.get_city(id)
      weather_data = WeatherData.new(city)
      weather_data.get_weather ? weather_data.print_weather_info : puts('Error: Not a valid city')
    else
      puts 'No database record matching that number!'
    end
  when 3
    print 'Enter the number of the city you wish to update: '
    id = gets.chomp.to_i
    if db_range.include?(id)
      print 'Enter the updated name for this city: '
      new_name = gets.chomp
      ds.update_city(id, new_name)
    else
      puts 'No database record matching that number!'
    end
  when 4
    print 'Enter the number of the city you wish to delete: '
    id = gets.chomp.to_i
    db_range.include?(id) ? ds.delete_city(id) : puts('No database record matching that number!')
  else
    puts 'Please enter a valid option!'
  end
end

puts "\nSee you next time!"
