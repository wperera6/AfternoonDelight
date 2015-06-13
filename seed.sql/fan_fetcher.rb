require 'sqllite3'

db = SQLite3::Database.new('my_database.db')

puts "Enter a fan name"
fun = gets.strip
puts db.execute("SELECT * FROM fans WHERE name ='#{fan}'").inspect