
#First, delete any existing recourses
Stock.destroy_all
Location.destroy_all
Item.destroy_all


#Create Locations
puts "Creating Locations"

Location.create(name: "Warehouse 1", street: "3707 Grand Ave S", city: "Minneapolis", state: "MN")
Location.create(name: "Warehouse 2", street: "1234 Main St", city: "Minneapolis", state: "MN")

#Create Items
puts "Creating Items"
Item.create(name: "Bread", description: "Whole grain bread", amount: 10)
Item.create(name: "Apple", description: "One a day keeps the doctor away", amount: 1)

#Create Stocks
puts "Creating Stocks"
Stock.create(item_id: Item.first.id, location_id: Location.first.id)
Stock.create(item_id: Item.first.id, location_id: Location.last.id)
