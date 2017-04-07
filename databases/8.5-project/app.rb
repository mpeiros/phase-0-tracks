require 'sqlite3'
require_relative 'weather_data'

db = SQLite3::Database.new('test.db')

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS test_table (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  );
SQL

db.execute(create_table_cmd)

print 'Enter a city: '
city = gets.chomp

weather_data = WeatherData.new(city)
weather_data.get_weather

p weather_data.city, weather_data.weather_description, weather_data.temperature, weather_data.humidity, weather_data.wind_speed
