require 'sqlite3'

class DataService
  DATABASE = SQLite3::Database.new('weather_app.db')
  private_constant :DATABASE

  def initialize
    create_table_cmd = <<-SQL
      CREATE TABLE IF NOT EXISTS cities (
        id INTEGER PRIMARY KEY,
        city VARCHAR(255)
      );
    SQL
    DATABASE.execute(create_table_cmd)
    DATABASE.results_as_hash = true
  end

  def select_all
    cities = DATABASE.execute('SELECT  * FROM cities')
  end

  def add_city(city)
    DATABASE.execute('INSERT INTO cities (city) VALUES (?)', [city])
  end

  def print_results(query_results)
    query_results.each do |result|
      puts "#{result['id']}: #{result['city']}"
    end
  end
end
