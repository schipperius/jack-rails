# This file should contain all the record creation needed to seed the 
# database with its default values. The data can then be loaded 
# with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


puts 'SETTING UP DEFAULT ADMIN LOGIN'
user = User.create! :name => 'Admin', 
:email => 'schipperius@gmail.com', 
:password => 'admin-jack', 
:password_confirmation => 'admin-jack', 
:confirmed_at => DateTime.now
user.toggle!(:admin)
puts 'New admin created: ' << user.name

puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'User', 
:email => 'mschipper@shaw.ca', 
:password => 'user-jack', 
:password_confirmation => 'user-jack', 
:confirmed_at => DateTime.now
puts 'New user created: ' << user.name