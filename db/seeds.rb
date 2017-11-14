require 'faker'

users = User.all
# Create items
50.times do
# #1
  item = Item.create!(
    user:   users.first,
    name:  Faker::Lorem.sentence,
  )
  item.update_attribute(:created_at, rand(10.minutes .. 1.year).ago)
end
items = Item.all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
