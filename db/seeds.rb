# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:


require 'faker'

puts 'Creating movies'
Movie.destroy_all

5.times do
  title = Faker::Movie.title
  overview = Faker::Lorem.paragraph
  poster_url = Faker::Internet.url
  rating = Faker::Number.between(from: 0, to: 10)
  Movie.create(title: title, overview: overview, poster_url: poster_url, rating: rating)
end

puts 'Finished!'

#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
