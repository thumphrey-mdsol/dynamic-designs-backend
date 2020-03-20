# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying Furniture"
Furniture.destroy_all
puts "destroying RoomFurniture"
RoomFurniture.destroy_all
puts "destroying Room"
Room.destroy_all
puts "destroying SavedRoom"
SavedRoom.destroy_all
puts "destroying User"
User.destroy_all

puts "Creating Furnature"
f1 = Furniture.create(product_name: "brown leather pullout couch", sale_price: 120, production_description: "You can sit on it!", image_url: "url!",class_name: "couch",class_id: 1,pdp: "wtf",length: 15,width: 3)
f2 = Furniture.create(product_name:"Big Fluffy Bed", sale_price:500, production_description:"You can sleep on it!", image_url:"url!", class_name:"bed", class_id:3, pdp: "wtf",length: 7,width: 5)
f3 = Furniture.create(product_name:"Nighty Night Stand", sale_price:50, production_description:"You can sit things on it!", image_url:"url!", class_name:"table", class_id:3, pdp: "wtf",length: 2,width: 2)

puts "Creating User"
u1 = User.create(username: "bob", password: "123", email:"bob@tom.com")
u2 = User.create(username: "T-Murder", password: "123", email:"T-Murder@tom.com")
u3 = User.create(username: "Tommy boy", password: "123", email:"tom@tom.com")

puts "Creating Room"
r1 = Room.create(category:"Living Room")
r2 = Room.create(category:"Bedroom")
r3 = Room.create(category:"Kitchen")

numbers = [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
puts "Creating savedRooms"
10.times do 
    SavedRoom.create(length: numbers.sample, width: numbers.sample, user_id: rand(User.first.id..User.last.id), room_id: rand(Room.first.id..Room.last.id))
end
puts "Creating RoomFurniture"
10.times do 
    RoomFurniture.create(saved_room_id: rand(SavedRoom.first.id..SavedRoom.last.id), furniture_id: rand(Furniture.first.id..Furniture.last.id), x_coordinate: numbers.sample, y_coordinate: numbers.sample)
end