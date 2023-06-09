User.create(name: 'Hope', email: 'kitszoo@gmail.com', username: 'dragonfaerie', is_admin: true, password: 'meowmeow', password_confirmation: 'meowmeow' )

Horse.create!(make: 1, mold: 1, released_as: 'Zafira', breed: 3, color: 'Liver Chestnut', pattern: 'None', gender: 'Mare', finish: 'Original Finish', size: 'Traditional', user_id: 1, location: 'Home Office', verified: true, office_pony: '', purchase_price: 175, condition: 'Excellent' )
Horse.create!(make: 1, mold: 1, released_as: 'RD Marciea Bey', breed: 3, color: 'Bay', pattern: 'None', gender: 'Mare', finish: 'Original Finish', size: 'Traditional', user_id: 1, location: 'Living Room Shelves', verified: true, office_pony: '', purchase_price: 175, condition: 'Excellent' )

Manufacturer.create!(make: "Breyer")
Manufacturer.create!(make: "Peter Stone")
Manufacturer.create!(make: "Resin")

Breed.create(breed: "Tennessee Walker", breed_group: "Gaited")
Breed.create(breed: "Quarter Horse", breed_group: "Stock")
Breed.create(breed: "Arabian", breed_group: "Saddle")
Breed.create(breed: "American Saddlebred", breed_group: "Saddle")
Breed.create(breed: "Appaloosa", breed_group: "Stock")
Breed.create(breed: "Mustang", breed_group: "Stock")

Mold.create(mold: "Show Stance Arabian")
Mold.create(mold: "Fighting Stallion")
Mold.create(mold: "5-Gaiter")
Mold.create(mold: "Amber")
