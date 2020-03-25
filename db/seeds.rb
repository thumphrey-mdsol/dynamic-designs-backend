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

puts "Creating Furniture"
sofa1 = Furniture.create(product_name: "Beige Corner Sofa", sale_price: 3200, production_description: "You can sit on it!", image_url: "https://www.finlinefurniture.ie/wp-content/gallery/atlas-chaise-top-1/Atlas-Corner-Chaise-Sofa-Top-View-in-Orca-Plain-ow258-Silver-Collection-Fabric.JPG",class_name: "sofa",class_id: 1,pdp: "wtf",length: 11,width: 5)

sofa2 = Furniture.create(product_name: "Brown Leather Sofa", sale_price: 1900, production_description: "You can sit on it!", image_url: "https://hivemodern.com/public_resources/full/gentry-90-2-seater-sofa-patricia-urquiola-moroso-3.jpg",class_name: "sofa",class_id: 1,pdp: "wtf",length: 9,width: 3)

bed1 = Furniture.create(product_name:"White Bed", sale_price: 850, production_description:"You can sleep on it!", image_url:"https://i.pinimg.com/originals/3b/1a/e9/3b1ae9e6d49174442713e3c0e75b8a9f.png", class_name:"bed", class_id:3, pdp: "wtf",length: 7,width: 5)

bed2 = Furniture.create(product_name:"Wooden Framed Bed", sale_price: 1100, production_description:"You can sleep on it!", image_url:"https://i.dlpng.com/static/png/5490929-bed-top-view-brine-bed-top-view-474_474_preview.png", class_name:"bed", class_id:3, pdp: "wtf",length: 7,width: 5)

dresser1 = Furniture.create(product_name:"Antique Wood Dresser", sale_price: 975, production_description:"You can store your clothes in it!", image_url:"https://imageresizer.furnituredealer.net/img/remote/images.furnituredealer.net/img/products%2Fhooker_furniture%2Fcolor%2Fsolana%205291_5291-90002-b2.jpg?width=1024&height=768&scale=both&trim.threshold=50&trim.percentpadding=10", class_name:"dresser", class_id:3, pdp: "wtf",length: 6,width: 2)

dresser2 = Furniture.create(product_name:"Wooden Dresser", sale_price: 850, production_description:"You can store your clothes in it!", image_url:"https://static.appliancesconnection.com/product/450x420/c1a591086927d38a8f0eab60047f56ad_980469.jpg", class_name:"dresser", class_id:3, pdp: "wtf",length: 6,width: 2)

sideTable1 = Furniture.create(product_name:"Square Side Table", sale_price: 150, production_description:"You can put things on top of it!", image_url:"https://images2.imgix.net/p4dbimg/1670/images/1193-05top.jpg?trim=color&trimcolor=FFFFFF&trimtol=5&w=1024&h=768&fm=pjpg", class_name:"side table", class_id:3, pdp: "wtf",length: 2,width: 2)

sideTable2 = Furniture.create(product_name:"Round Side Table", sale_price: 150, production_description:"You can put things on top of it!", image_url:"https://images2.imgix.net/p4dbimg/1670/images/1193-05top.jpg?trim=color&trimcolor=FFFFFF&trimtol=5&w=1024&h=768&fm=pjpg", class_name:"side table", class_id:3, pdp: "wtf",length: 2,width: 2)

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