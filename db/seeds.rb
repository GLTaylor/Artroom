# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
   }
 ]
 )

Artist.create! (
    {
      name: "Ren Hang",
      nationality: "Chinese",
      biography: " ",
      birthday: "1987",
      deathday: "2017"
    },
    {
      name: "Ren Hang",
      nationality: " ",
      biography: " ",
      birthday: " ",
      deathday: " ",
      location: " "
   }
)

  one = Artwork.create!(
    title: "",
    description: "",
    date: " ",
    category: " ",
    medium: " ",
    mood: "Wild",
    interest: "Eroticism",
    image: " ",
    user: User.all.sample
  )

  one.remote_photo_url = "https://res.cloudinary.com/ginnywhx/image/upload/v1534777196/cgamkgygv2dg5znwc1fu.jpg"
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
    user: User.all.sample
  )

  two.remote_photo_url = "____"
  two.save!
