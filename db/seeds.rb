# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Start seed..."

Flat.destroy_all

20.times do
  Flat.create!(
  name: Faker::Lorem.question,
  address: Faker::Address.street_name,
  description: "Consequuntur provident voluptas. Provident sed est. Natus accusamus quia. Nihil quia quis. Et libero voluptate. Et nihil nostrum. Error quos saepe. Laudantium deleniti ea. Libero et dolores. Impedit delectus et. Earum nostrum qui. Praesentium perspiciatis.",
  price_per_night: rand(1..100),
  number_of_guests: rand(1..9)
)
end


puts "Seed done"
