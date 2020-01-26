# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#generating Alot Phone Number

(0..10).each do |i|
  random_generated_phone_number = 10.times.map { rand(0..9) }.join
  AlotPhoneNumber.create(phone_number: random_generated_phone_number, allotted: false)
end