# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'

Hanging.delete_all
Artwork.delete_all
Artist.delete_all
User.delete_all

User.create!(
  [
    {
      email: "gin@gmail.com",
      user_name: "ginmule",
      password: "123456",
    },
    {
     email: "camille@hotmail.com",
    user_name: "camilleraiser",
     password: "123456",
   },
    {
     email: "taylor@hotmail.com",
     user_name:  "GLTaylor",
     password: "123456",
   },
    {
     email: "noah@example.com",
     user_name:  "noah",
     password: "123456",
   }
 ]
 )

  ren_hang = Artist.create!(
      name: "Ren Hang",
      nationality: "Chinese",
      biography: " ",
      birthday: "1987",
      deathday: "2017"
  )
  ren_hang.save!


  ai_wei_wei = Artist.create!(
      name: "Ren Hang",
      nationality: "Chinese",
      biography: " ",
      birthday: "1987",
      deathday: "2017"
  )
  ren_hang.save!





  one = Artwork.create!(
    title: "Human Love",
    description: "Young Chinese art photographer whose sensual images of the encounter between man and nature makes the Chinese government tremor.",
    date: "2017",
    category: "photograph",
    medium: " ",
    mood: "Wild",
    interest: "Eroticism",
    image: "https://res.cloudinary.com/ginnywhx/image/upload/v1534777196/cgamkgygv2dg5znwc1fu.jpg",
  )
  one.artist = ren_hang
  one.save!

  two = Artwork.create!(
    title: "",
    description: "",
    date: " ",
    category: " ",
    medium: " ",
    mood: " ",
    interest: " ",
    image: " ",
    artist: Artist.second
  )
  two.artist = ren_hang
  two.save!
