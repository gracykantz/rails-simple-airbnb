puts "Creating DB"

5.times do
Flat.create!(
  name: Faker::Lorem.sentence,
  address: Faker::Address.street_name,
  description: Faker::Lorem.paragraph,
  price_per_night: (75...200).to_a.sample,
  number_of_guests: (1..5).to_a.sample
)
end

puts "done!"
