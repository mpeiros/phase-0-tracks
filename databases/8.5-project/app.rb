require 'sqlite3'
require 'httparty'
require 'json'

db = SQLite3::Database.new('test.db')

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS test_table (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  );
SQL

db.execute(create_table_cmd)

response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow', format: :plain)

# puts response.body, response.code, response.message, response.headers.inspect

puts response.code, response.message 

my_hash = JSON.parse(response, symbolize_names: true)
puts my_hash[:items][0][:tags]
