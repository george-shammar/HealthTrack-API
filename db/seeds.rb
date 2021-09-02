# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.delete_all
Tracker.delete_all


10.times {
    User.create( username: Faker::Book.unique.user)
}

50.times {
    Tracker.create({
        blood_pressure: Faker::Book.title,
        blood_glucose: Faker::Lorem.paragraphs(number: rand(5..7)),
        user: User.limit(1).order("RANDOM()").first # sql random
    })
}