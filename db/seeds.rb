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
    User.create( username: Faker::Name.unique.user)
}

50.times {
    Tracker.create({
        blood_pressure: Faker::Number.number(digits: 2),
        blood_glucose: Faker::Number.number(digits: 2),
        user: User.limit(1).order("RANDOM()").first # sql random
    })
}