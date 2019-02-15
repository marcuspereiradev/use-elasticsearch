# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times do |i|
  Movie.create!(
    title: Faker::Lorem.words(4).join(' '),
    year: (1990..2020).to_a.sample,
    released: Faker::Date.birthday(1, 100),
    runtime: (1..60).to_a.sample,
    plot: Faker::Lorem.paragraph
  )
end
