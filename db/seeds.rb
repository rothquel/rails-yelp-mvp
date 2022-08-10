Restaurant.destroy_all

20.times {
  name = Faker::Restaurant.name
  address = Faker::Address.full_address
  phone_number = Faker::PhoneNumber.cell_phone
  category = ["chinese", "italian", "japanese", "french", "belgian"].sample
  restaurant = Restaurant.new(name: name, address: address, phone_number: phone_number, category: category)
  restaurant.save!
  puts "The restaurant '#{restaurant.name}' was created with id #{restaurant.id}"
}
