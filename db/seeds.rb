# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# organ = Organ.new(
#                   name: 'Heart',
#                   price: 456.88,
#                   image: 'https://upload.wikimedia.org/wikipedia/en/0/0b/Heart_album_cover.jpg',
#                   description: 'The self titled 1985 album from, you guessed it, Heart',
#                   )

# organ.save

# organ = Organ.new(
#                   name: 'Einsteins Brain',
#                   price: 100000.00,
#                   image: 'http://i.dailymail.co.uk/i/pix/2015/05/03/19/2847FC5F00000578-3066475-image-a-60_1430678352628.jpg',
#                   description: 'A collectors item, originally donated to science, now you can have it on your living room display shelf!',
#                   )

# organ.save

# organ = Organ.new(
#                   name: 'Lung',
#                   price: 0.50,
#                   image: 'http://www.smokerslungs.org/wp-content/uploads/2009/11/smokers-lung-picture-3.png',
#                   description: "On clearance, it was donated by the Lung Cancer Association of America, was a smoker's lung used in D.A.R.E presentations.",
#                   )

# organ.save

# organ = Organ.new(
#                   name: 'Kidney',
#                   price: 3000.00,
#                   image: 'http://www.medicalgrapevineasia.com/mg/wp-content/uploads/2015/04/Donor-Kidney-on-Ice-before-transplantation.jpg',
#                   description: "Recently aquired through our... business partners. Still fresh! Hurry before it's no longer viable!",
#                   )

# organ.save

# Supplier.create!(name:"Willy by the docks",email:"wildwilly@downbythedocks.com",phone:"555-555-5555")
# Supplier.create!(name:"Richard the resident",email:"rich@mercyhosp.com",phone:"555-555-5551")
# Supplier.create!(name:"disgruntled orderly",email:"grumps@cchospital.com",phone:"555-555-5552")

Category.create!(name: "Collectible")
Category.create!(name: "Rare")
Category.create!(name: "Common")
Category.create!(name: "Useful")

OrganCategory.create!(organ_id: 2,category_id: 1)
OrganCategory.create!(organ_id: 2,category_id: 2)
OrganCategory.create!(organ_id: 4,category_id: 3)
OrganCategory.create!(organ_id: 4,category_id: 4)
OrganCategory.create!(organ_id: 5,category_id: 3)
