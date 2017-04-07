require 'sqlite3'
require_relative 'weather_data'

db = SQLite3::Database.new('weather_app.db')
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS cities (
    id INTEGER PRIMARY KEY,
    city VARCHAR(255)
  );
SQL

db.execute(create_table_cmd)

puts db.execute('SELECT * FROM cities')

print 'Enter a city: '
city = gets.chomp.strip

db.execute('INSERT INTO cities (city) VALUES (?)', [city])

weather_data = WeatherData.new(city)

if weather_data.get_weather
  p weather_data.city, weather_data.weather_description, weather_data.temperature, weather_data.humidity, weather_data.wind_speed
else
  puts 'error - not a valid city'
end
