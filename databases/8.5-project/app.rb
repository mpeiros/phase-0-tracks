require 'sqlite3'

db = SQLite3::Database.new('test.db')

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS test_table (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL

db.execute(create_table_cmd)
