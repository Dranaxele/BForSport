# Include Ruby Gem libraries.
require 'rubygems'
require 'mysql2'
 
begin
  # Create new database connection.
  client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "root")
  # Print connected message.
  puts "Connected to the MySQL database server."

rescue Mysql::Error => e
  # Print the error.
  puts "ERROR #{e.errno} (#{e.sqlstate}): #{e.error}"
  puts "Can't connect to the MySQL database specified."
  # Signal an error.
  exit 1
ensure
  # Close the connection when it is open.
end