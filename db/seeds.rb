require 'faker'

puts "Creating some restaurants..."
Restaurant.destroy_all

5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  restaurant.save
  puts "All of the restaurants were successfully created!"
end
