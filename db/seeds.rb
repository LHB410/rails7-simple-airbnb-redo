# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "cleaning db"
Flat.destroy_all

flat_images = ['https://images.unsplash.com/photo-1494526585095-c41746248156?w=1200', "https://images.unsplash.com/photo-1588091945254-e2191fefe7b7?format=webp", "https://images.unsplash.com/photo-1564137799581-baca1aa17f5d?format=webp", "https://images.unsplash.com/photo-1533779283484-8ad4940aa3a8?format=webp", "https://images.unsplash.com/photo-1505873242700-f289a29e1e0f?format=webp", "https://images.unsplash.com/photo-1560448204-e02f11c3d0e2?format=webp", "https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?format=webp", "https://images.unsplash.com/photo-1545158535-c3f7168c28b6?format=webp", "https://images.unsplash.com/photo-1545158535-c3f7168c28b6?format=webp", "https://images.unsplash.com/photo-1551927411-95e412943b58?format=webp" ]

10.times do
  flat = Flat.create(
    name: Faker::Adjective.positive.capitalize + " " + ["Apartment", "Flat", "House", "Space", "Getaway"].sample,
    address: Faker::Address.street_address + " , " + Faker::Address.postcode,
    description: ["Beautiful and Light", "Small but amazingly comfortable", "Wonderful space with plenty of amenities"].sample,
    price_per_night: rand(30..300),
    number_of_guests: [1, 2, 4, 6, 8, 10].sample,
    picture_url: flat_images.pop
  )


  puts "Created flat #{flat.id}"

end
