# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

333.times do
  Request.create name: Faker::Hacker.verb,
                 email: Faker::Internet.email,
                 department: "Sales",
                 message: Faker::Hacker.say_something_smart
end

333.times do
  Request.create name: Faker::Hacker.verb,
                 email: Faker::Internet.email,
                 department: "Marketing",
                 message: Faker::Hacker.say_something_smart
end

334.times do
  Request.create name: Faker::Hacker.verb,
                 email: Faker::Internet.email,
                 department: "Technical",
                 message: Faker::Hacker.say_something_smart
end
