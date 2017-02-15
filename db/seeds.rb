
10.times do
  street = Faker::Address.street_address
  number = Faker::Address.building_number
  city = Faker::Address.city
  country = Faker::Address.country
  restaurant = Restaurant.new(
    name: Faker::Company.name,
    address: "#{number} #{street}, #{city}, #{country}",
    phone_number: Faker::PhoneNumber.phone_number,
    category: %w(chinese italian japanese french belgian).sample)
  restaurant.save!
end
