# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Manufacturer.create( manufacturer: "Breyer")
Manufacturer.create(manufacturer: "Peter Stone")
Manufacturer.create(manufacturer: "Resin")

Horse.create(make: '1', mold: 'Nakota', released_as: 'Shelby', breed: 'Mustang', 
pattern: 'Blanket Appaloosa', gender: 'Stallion', finish: 'OF', size: 'Traditional', 
user_id: 1, location: 'Living Room Shelves', verified: true, office_pony: 'June 2023', 
purchase_price: 175, condition: 'excellent' )
