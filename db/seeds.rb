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


Prompt.create!(emotion:"dark", setting:"woods",  genre:"scifi")

UserGroup.create!(user:User.first, group:Group.first)

Character.create!(name:"awesomesauce mcgee", prompt:Prompt.first )

Comment.create!(body:"HI I AM A COMMENT", user:User.first, piece:Piece.first)


Prompt.create!(phrase:"He asked her out to dinner.", emotion:"fondness")
Prompt.create!(phrase:"You get wet in the rain.", emotion:"attachment")
Prompt.create!(phrase:"I get tired of educating people.", emotion:"tenderness")
Prompt.create!(phrase:"It’s important to get sleep so don’t stay up too long." ,emotion:"warmth")
Prompt.create!(phrase:"He always give a hand to anyone in difficulty.", emotion:"intimacy")
Prompt.create!(phrase:"I’ve got to get into town. ", emotion:"indifferent")
Prompt.create!(phrase:"Can you give me a ride?", emotion:"affection")
Prompt.create!(phrase:"He gave an idea for new project so he got a promotion.", emotion:"passion")
Prompt.create!(phrase:"It’s easy to make a mistake.", emotion:"desire")
Prompt.create!(phrase:"We can’t undertake that you will make a profit.", emotion:"lust")
Prompt.create!(phrase:"My mom always makes me a sandwich to school", emotion:"scared")
Prompt.create!(phrase:"We need to make an effort to do well in this competition.", emotion:"frightened")
Prompt.create!(phrase:"The commitee has made serious objections to that plan.", emotion:"nervous")
Prompt.create!(phrase:"The old man is going to go crazy.", emotion:"panicky")
Prompt.create!(phrase:"As for myself I doubt I’ll ever go on a date.", emotion:"intimidated")
Prompt.create!(phrase:"I’ll just go online and look up her address.", emotion:"alarmed")
Prompt.create!(phrase:"I want to go sailing.", emotion:"afraid")
Prompt.create!(phrase:"I wanted to take a break and work on some things.", emotion:"fearful")
Prompt.create!(phrase:"We will take a chance to have the party outdoor.", emotion:"startled")
Prompt.create!(phrase:"He had intended to take a holiday in New York.", emotion:"terrified")
Prompt.create!(phrase:"I might take a lesson from you.", emotion:"happy")
Prompt.create!(phrase:"I’ll take a look at the website and let you know what I think.", emotion:"cheerful")
Prompt.create!(phrase:"Take a rest from your hard work.", emotion:"merry")
Prompt.create!(phrase:"Take a seat while I get you something to drink.", emotion:"pleased")
Prompt.create!(phrase:"I take a step into the center of the circle.", emotion:"delighted")
Prompt.create!(phrase:"We don’t have to take advice from him.", emotion:"untroubled")
Prompt.create!(phrase:"Take medicine when you get gripes.", emotion:"carefree")
