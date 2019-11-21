require 'faker'

puts 'Cleaning database...'

Restaurant.destroy_all

puts 'Creating restaurants...'

5.times do
  rest = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    category: Faker::Restaurant.type
  )
  rest.save!
end

puts 'Finished!'
