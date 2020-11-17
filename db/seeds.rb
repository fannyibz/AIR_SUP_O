# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





puts "Deleting all records"
User.destroy_all
Service.destroy_all

puts "Seeding users"
batman = User.create!(username: 'Batman', password: "AZERTY", email: "batman@gmail.com", bio:"I have a great car.")
tom = User.create!(username: 'Tom', password: "AZERTY", email: "tom@gmail.com", bio:"I love super heroes.")


puts "Seeding services"
help = Service.create!(name: 'Help & rescue', description: "To book if you are in danger.", address: "Paris", user_id: batman.id)
kill = Service.create!(name: 'Kill & destroy', description: "To get rid of someone bad...", address: "Paris", user_id: batman.id)

puts "Seed finished!"
