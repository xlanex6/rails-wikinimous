# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do

  a = Article.new(
    title: "#{Faker::Name.name}",
    content: "#{Faker::Lorem.paragraph(6)}"
  )
  a.save
end

# 10.times do
#   post = Post.new(
#     name: Faker::Commerce.product_name,
#     url: Faker::Internet.url,
#     votes: (0..1000).to_a.sample
#   )
#   post.save
# end
