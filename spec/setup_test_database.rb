# in spec/setup_test_database.rb

def setup_test_database
require 'pg'

p "Setting up test database..."

connection = PG.connect(dbname: 'bookmark_manager_tests')

# Clear the bookmarks table
connection.exec("TRUNCATE bookmarks;")

end


