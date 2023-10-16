# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Post.destroy_all
Comment.destroy_all

puts "Creating posts and comments..."
post = Post.create(title: "First", content: "this is my first post")
post2 = Post.create(title: "Second", content: "this is my second post")


parent_comment1 = Comment.create(commentary: "This is great!", post: post)
parent_comment2 = Comment.create(commentary: "This is a great news!", post: post)

comment1 = Comment.create(commentary: "I am the child comment 1", post: post, parent_comment: parent_comment1)
comment2 = Comment.create(commentary: "I am the child comment 2", post: post, parent_comment: parent_comment1)

puts "Finished!"
