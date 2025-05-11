# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create Users
users = []
5.times do |i|
  users << User.create!(
    name: "User #{i + 1}",
    email: "user#{i + 1}@example.com",
    phone_number: "012345678#{i}",
    dob: Date.new(1990 + i, 1, 1),
    address: "Address #{i + 1}"
  )
end

# Create Posts with a creator
posts = []
3.times do |i|
  posts << Post.create!(
    title: "Post #{i + 1}",
    content: "This is the content of post #{i + 1}.",
    creator: users.sample
  )
end

# Assign random editors to each post
posts.each do |post|
  editors = users.sample(2) 
  editors.each do |editor|
    Editorship.create!(post: post, user: editor)
  end
end

