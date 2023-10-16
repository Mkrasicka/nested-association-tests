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
post = Post.create(title: "First Post", content: "this is my first post's content.")


parent_comment1 = Comment.create(commentary: "This is great!", post: post)
parent_comment2 = Comment.create(commentary: "This is a great news!", post: post)

comment1 = Comment.create(commentary: "Super nice comment", parent_comment: parent_comment1, post: post)
comment2 = Comment.create(commentary: "You could say something more.", parent_comment: parent_comment1, post: post)

reply_to_comment1 = Comment.create(commentary: "What even is this comment?", parent_comment: comment1, post: post)

puts "Finished!"
