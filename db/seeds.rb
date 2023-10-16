# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Post.destroy_all

post = Post.create(title: "First Post", content: "This is my first post's content.")

parent_comment = Comment.create(commentary: "This is a parent comment.", post: post)

child_comment1 = Comment.create(commentary: "This is a reply to the parent comment.", parent_comment: root_comment, post: post)
child_comment2 = Comment.create(commentary: "This is another reply to the parent comment.", parent_comment: root_comment, post: post)

reply_to_child1 = Comment.create(commentary: "This is a reply to the first child comment.", parent_comment: child_comment1, post: post)
