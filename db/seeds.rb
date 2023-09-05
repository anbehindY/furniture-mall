# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.find_by(id:1)

f1 = Furniture.create(user_id:user1.id, name: "Kelvin Sofa", image: "https://images.unsplash.com/photo-1555041469-a586c61ea9bc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80", price: 1200, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", warranty: 2)
f1 = Furniture.create(user_id:user1.id, name: "Batnio Sofa", image: "https://images.unsplash.com/photo-1493663284031-b7e3aefcae8e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80", price: 1700, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", warranty: 4)
f1 = Furniture.create(user_id:user1.id, name: "Mahogany Sofa", image: "https://images.unsplash.com/photo-1550226891-ef816aed4a98?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80", price: 500, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", warranty: 1)
f1 = Furniture.create(user_id:user1.id, name: "Aok tree Sofa", image: "https://images.unsplash.com/photo-1524758631624-e2822e304c36?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80", price: 1140, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", warranty: 3)
f1 = Furniture.create(user_id:user1.id, name: "Ben King Sofa", image: "https://images.unsplash.com/photo-1555041469-a586c61ea9bc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80", price: 1440, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", warranty: 4)
f1 = Furniture.create(user_id:user1.id, name: "Marshal Prince Sofa", image: "https://images.unsplash.com/photo-1555041469-a586c61ea9bc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80", price: 5200, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", warranty: 2)
