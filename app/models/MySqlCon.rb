require 'mysql'  

begin
  	#my = Mysql.new(hostname, username, password, databasename)  
	con = Mysql.new('localhost', 'root', 'root', '')
rescue Exception => e
  	puts "Couldn't connect to the databse, try again"
	exit 1
	con.close
 end
	
