# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :email => 'jonesy@ga.co', :password => 'chicken', :name => 'J'
u2 = User.create :email => 'craigsy@ga.co', :password => 'chicken', :name => 'C'
u3 = User.create :email => 'josh@ga.co', :password => 'chicken', :name => 'Josh', :admin => true

puts "#{ User.count } users"

Order.destroy_all
o1 = Order.create 
o2 = Order.create 
o3 = Order.create 
o4 = Order.create  
puts "#{ Order.count } orders"

puts "orders and users"
u1.orders << o1 << o2
u2.orders << o3 << o4