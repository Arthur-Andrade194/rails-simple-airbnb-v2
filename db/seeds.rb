# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
puts 'Cleaning the db....'
Flat.destroy_all

30.times do
  Flat.create!(
    name: Faker::Adjective.positive + ' ' + Faker::Space.star_cluster,
    address: Faker::Address.street_name,
    description: Faker::Lorem.words(number: 10),
    price_per_night: Faker::Number.within(range: 1..300),
    number_of_guests: Faker::Number.within(range: 1..5)
  )
end

puts "... created #{Flat.count} flats"
puts Flat.last
