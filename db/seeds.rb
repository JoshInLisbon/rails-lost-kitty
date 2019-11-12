# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# want to create things randomly
# do not need to require 'faker' in rails,... in configuration it works it out

puts 'destroy'
Kitty.destroy_all

puts 'make 10 Kitties'
10.times do
  Kitty.create!(
    color: Faker::Color.color_name,
    legs: rand(0..4),
    location: '',
    alive: [true].sample,
    photo_url: 'http://lorempixel.com/400/200'
  )
end
