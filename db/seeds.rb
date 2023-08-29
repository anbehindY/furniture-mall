# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.find_by(id:1)

# f1 = Furniture.create(user_id:user1.id, name: "Kelvin Sofa", image: "https://unsplash.com/photos/fZuleEfeA1Q", price: 1200, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse imperdiet nisl ac elit ultricies, aliquet maximus orci suscipit. In et leo erat. Maecenas massa ante, fermentum et luctus sit amet, tristique id leo.", warranty: 2)
f2 = Furniture.create(user_id:user1.id, name: "Tampa Side Chair", image: "https://unsplash.com/photos/ljRiZl00n18", price: 1000, description: "Suspendisse imperdiet nisl ac elit ultricies, aliquet maximus orci suscipit. In et leo erat. Maecenas massa ante, fermentum et luctus sit amet, tristique id leo.", warranty: 5)
f3 = Furniture.create(user_id:user1.id, name: "Smokewhite Chair", image: "https://unsplash.com/photos/1P6AnKDw6S8", price: 10000, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse imperdiet nisl ac elit ultricies, aliquet maximus orci suscipit. In et leo erat", warranty: 7)
