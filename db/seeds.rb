# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

photo_selection = %w(public/seed_files/buds.jpg public/seed_files/ritz.jpg public/seed_files/three.jpg)

Photo.destroy_all

20.times do
  Photo.create!(
  title: Faker::Superhero.name,
  description: Faker::Hipster.paragraph(10),
  image: open(photo_selection.sample),
  date_taken: Faker::Date.backward(100)
  )
end
