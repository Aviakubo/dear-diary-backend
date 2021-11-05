# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
50.times do
    Journal.create(
        title: Faker::Hobby.activity,
        date: Faker::Date.forward(days: 23),
        entry: Faker::Quote.matz 
    )
end

# localhost:3000/journals to see the page

puts "Seeded da database"