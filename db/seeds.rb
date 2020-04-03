# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Destroying all activities'
Activity.destroy_all

Activity.create(name: "Yoga")
Activity.create(name: "Walking")
Activity.create(name: "Calling Friends")
Activity.create(name: "Cleaning")
Activity.create(name: "Coding")
Activity.create(name: "Working out")
Activity.create(name: "Shopping")
Activity.create(name: "Cooking")
