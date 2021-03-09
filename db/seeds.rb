# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Drone.destroy_all
User.destroy_all
Booking.destroy_all


    User.create(name: "Romina", email: "rominapaola.velarde@gmail.com", password: 'email')



    Drone.create(image: "https://aircargoworld.com/wp-content/uploads/2018/09/0905_flytrex-mule-on-ground.png", model: Faker::Drone.name, location: Faker::Address.city, price_day: Faker::Commerce.price, price_week: Faker::Commerce.price, price_month: Faker::Commerce.price, price_year: Faker::Number.decimal(l_digits: 3, r_digits: 3), max_capacity: Faker::Drone.weight, max_distance: Faker::Drone.max_flight_distance, category: 'Industrial')
    
    Drone.create(image: "https://149355317.v2.pressablecdn.com/wp-content/uploads/2017/09/flytrex-delivery-drone.png", model: Faker::Drone.name, location: Faker::Address.city, price_day: Faker::Commerce.price, price_week: Faker::Commerce.price, price_month: Faker::Commerce.price, price_year: Faker::Number.decimal(l_digits: 3, r_digits: 3), max_capacity: Faker::Drone.weight, max_distance: Faker::Drone.max_flight_distance, category: 'Small business')

    Drone.create(image: "https://aircargoworld.com/wp-content/uploads/2018/09/0905_flytrex-mule-on-ground.png", model: Faker::Drone.name, location: Faker::Address.city, price_day: Faker::Commerce.price, price_week: Faker::Commerce.price, price_month: Faker::Commerce.price, price_year: Faker::Number.decimal(l_digits: 3, r_digits: 3), max_capacity: Faker::Drone.weight, max_distance: Faker::Drone.max_flight_distance, category: 'Personal')

    Drone.create(image: "https://aircargoworld.com/wp-content/uploads/2018/09/0905_flytrex-mule-on-ground.png", model: Faker::Drone.name, location: Faker::Address.city, price_day: Faker::Commerce.price, price_week: Faker::Commerce.price, price_month: Faker::Commerce.price, price_year: Faker::Number.decimal(l_digits: 3, r_digits: 3), max_capacity: Faker::Drone.weight, max_distance: Faker::Drone.max_flight_distance, category: 'Industrial')

    Drone.create(image: "https://149355317.v2.pressablecdn.com/wp-content/uploads/2017/09/flytrex-delivery-drone.png", model: Faker::Drone.name, location: Faker::Address.city, price_day: Faker::Commerce.price, price_week: Faker::Commerce.price, price_month: Faker::Commerce.price, price_year: Faker::Number.decimal(l_digits: 3, r_digits: 3), max_capacity: Faker::Drone.weight, max_distance: Faker::Drone.max_flight_distance, category: 'Small business')

    Drone.create(image: "https://aircargoworld.com/wp-content/uploads/2018/09/0905_flytrex-mule-on-ground.png", model: Faker::Drone.name, location: Faker::Address.city, price_day: Faker::Commerce.price, price_week: Faker::Commerce.price, price_month: Faker::Commerce.price, price_year: Faker::Number.decimal(l_digits: 3, r_digits: 3), max_capacity: Faker::Drone.weight, max_distance: Faker::Drone.max_flight_distance, category: 'Personal')

 

5.times do
    Booking.create(drone: Drone.all.sample, from_address:Faker::Address.street_address, to_address:Faker::Address.street_address)
end 

puts "seeded!"