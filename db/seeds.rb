# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
categories = ["Engineering", "Marketing", "Design", "Sales", "Customer Service"]
locations = ["New York", "San Francisco", "Berlin", "Tokyo", "London", "Paris", "Sydney", "Toronto", "Singapore"]
100.times do
  Job.create!(
    title: Faker::Job.title,
    description: Faker::Lorem.sentence(word_count: 15),
    category: categories.sample,
    location: locations.sample,
    remote: [true, false].sample,
    commitment: Job.commitments.keys.sample
  )
end