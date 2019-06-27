# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Comment.destroy_all
Character.destroy_all
Prompt.destroy_all
Piece.destroy_all
User.destroy_all
Group.destroy_all
UserGroup.destroy_all


User.create!(name:"coolguy")

Group.create!(name:"cool kids group", extra:"this is extra")

Piece.create!(body:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", likes:20, bookmarked:true, user: User.first)


Prompt.create!(emotion:"dark", setting:"woods", event:"lost", genre:"scifi", piece:Piece.first)

UserGroup.create!(user:User.first, group:Group.first)

Character.create!(name:"awesomesauce mcgee", prompt:Prompt.first )

Comment.create!(body:"HI I AM A COMMENT", user:User.first, piece:Piece.first)
