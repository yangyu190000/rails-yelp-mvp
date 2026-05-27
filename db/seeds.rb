# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."

Review.destroy_all
Restaurant.destroy_all

puts "Creating restaurants..."

restaurants = [
  {
    name: "Dragon Express",
    address: "12 Beijing Road",
    phone_number: "0102030405",
    category: "chinese"
  },
  {
    name: "Mama Roma",
    address: "45 Rome Street",
    phone_number: "0203040506",
    category: "italian"
  },
  {
    name: "Sakura Sushi",
    address: "78 Tokyo Avenue",
    phone_number: "0304050607",
    category: "japanese"
  },
  {
    name: "Le Petit Bistro",
    address: "9 Paris Boulevard",
    phone_number: "0405060708",
    category: "french"
  },
  {
    name: "Brussels Beer House",
    address: "21 Grand Place",
    phone_number: "0506070809",
    category: "belgian"
  }
]

restaurants.each do |restaurant_attributes|
  restaurant = Restaurant.create!(restaurant_attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
