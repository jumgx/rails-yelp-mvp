# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
nemresto = { name: "NEMS restaurant", address: "7 Boundary St, London E2 7JE", category: "chinese", phone_number: "1234567890" }
pizza_east =  { name: "Pizza East", address: "56A rue de florence, Rome E1 6PQ", category: "italian", phone_number: "2345678901" }
poutine =  { name: "Poutine", address: "56A rue de la frite, belgium", category: "belgian", phone_number: "3456789012" }
boudin_lyonnais =  { name: "boudin lyonnais", address: "56A rue mercière, Lyon 69001", category: "french", phone_number: "4567890123" }
sushi_party =  { name: "Sushi Party", address: "56A Shoreditch High St, JAPAN E1 6PQ", category: "japanese", phone_number: "5678901234" }

[ nemresto, pizza_east, poutine, boudin_lyonnais, sushi_party ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts Restaurant.count
puts "Finished!"
