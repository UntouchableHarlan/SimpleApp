# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name:  "Moo Salo",
             email: "salo@moo.com",
             password:              "foobar",
             password_confirmation: "foobar",
             activated: true,
             activated_at: Time.now)

44.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.now)
end

users = User.order(:created_at).take(6)
50.times do
  context = Faker::Lorem.sentence(5)
  users.each do |user|
    user.microposts.create!(context: context)
  end
end
