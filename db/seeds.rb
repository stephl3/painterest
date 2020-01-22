# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

### DESTROY ALL
User.destroy_all
Board.destroy_all
Pin.destroy_all
BoardsPins.destroy_all



### USERS
user = User.create(
  username: 'bob_ross',
  first_name: 'Bob',
  last_name: 'Ross',
  email: 'bob_ross@happyaccidents.org',
  password: 'password123',
  location: 'Heaven',
  description: 'We don\'t make mistakes, just happy little accidents.'
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/profile_photos/bob_ross.jpg")
user.photo.attach(io: file, filename: "bob_ross.jpg")

user = User.create(
  username: 'king_james',
  first_name: 'LeBron',
  last_name: 'James',
  email: 'king_james@gmail.com',
  password: 'password123',
  location: 'Los Angeles, CA',
  description: 'Strive For Greatness'
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/profile_photos/lebron_james.jpg")
user.photo.attach(io: file, filename: "lebron_james.jpg")

user = User.create(
  username: 'big_brow',
  first_name: 'Anthony',
  last_name: 'Davis',
  email: 'big_brow@gmail.com',
  password: 'password123',
  location: 'Los Angeles, CA',
  description: 'Fear The Brow'
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/profile_photos/anthony_davis.jpg")
user.photo.attach(io: file, filename: "anthony_davis.jpg")

user = User.create(
  username: 'chef_curry',
  first_name: 'Stephen',
  last_name: 'Curry',
  email: 'chef_curry@gmail.com',
  password: 'password123',
  location: 'San Francisco, CA',
  description: 'I Can Do All Things'
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/profile_photos/steph_curry.jpg")
user.photo.attach(io: file, filename: "steph_curry.jpg")

user = User.create(
  username: 'klay',
  first_name: 'Klay',
  last_name: 'Thompson',
  email: 'klay@gmail.com',
  password: 'password123',
  location: 'Oakland, CA',
  description: 'I signed a toaster.'
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/profile_photos/klay_thompson.jpg")
user.photo.attach(io: file, filename: "klay_thompson.jpg")



### BOARDS
Board.create(
  title: "By the water",
  description: "My favorite Bob Ross paintings by the water",
  secret: false,
  user_id: 2
)

Board.create(
  title: "Evergreens",
  description: "My favorite Bob Ross paintings with Evergreens",
  secret: false,
  user_id: 3
)

Board.create(
  title: "Tranquil Forest",
  description: "My favorite Bob Ross paintings of forests",
  secret: false,
  user_id: 4
)

Board.create(
  title: "Winter is coming",
  description: "My favorite Bob Ross paintings of winter",
  secret: false,
  user_id: 5
)

Board.create(
  title: "Abstract Artwork",
  description: "Amazing collection to add at home",
  secret: true,
  user_id: 1
)

Board.create(
  title: "Aesthetic Animals",
  description: "Lovely creatures to be admired",
  secret: false,
  user_id: 1
)

Board.create(
  title: "Nature's Beauty",
  description: "Truly remarkable work",
  secret: false,
  user_id: 1
)

Board.create(
  title: "Lavish Lands",
  description: "Every place has a story",
  secret: false,
  user_id: 2
)

Board.create(
  title: "People Paintings",
  description: "Everyone has a story",
  secret: false,
  user_id: 4
)



### PINS
pin = Pin.create(
  title: "Bob Ross painting 243",
  description: "Bob Ross painting 243",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting243.png")
pin.photo.attach(io: file, filename: "painting243.png")

BoardsPins.create(
  pin_id: 1,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 244",
  description: "Bob Ross painting 244",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting244.png")
pin.photo.attach(io: file, filename: "painting244.png")

BoardsPins.create(
  pin_id: 2,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 245",
  description: "Bob Ross painting 245",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting245.png")
pin.photo.attach(io: file, filename: "painting245.png")

BoardsPins.create(
  pin_id: 3,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 294",
  description: "Bob Ross painting 294",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting294.png")
pin.photo.attach(io: file, filename: "painting294.png")

BoardsPins.create(
  pin_id: 4,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 246",
  description: "Bob Ross painting 246",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting246.png")
pin.photo.attach(io: file, filename: "painting246.png")

BoardsPins.create(
  pin_id: 5,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 247",
  description: "Bob Ross painting 247",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting247.png")
pin.photo.attach(io: file, filename: "painting247.png")

BoardsPins.create(
  pin_id: 6,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 248",
  description: "Bob Ross painting 248",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting248.png")
pin.photo.attach(io: file, filename: "painting248.png")

BoardsPins.create(
  pin_id: 7,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 249",
  description: "Bob Ross painting 249",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting249.png")
pin.photo.attach(io: file, filename: "painting249.png")

BoardsPins.create(
  pin_id: 8,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 250",
  description: "Bob Ross painting 250",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting250.png")
pin.photo.attach(io: file, filename: "painting250.png")

BoardsPins.create(
  pin_id: 9,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 251",
  description: "Bob Ross painting 251",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting251.png")
pin.photo.attach(io: file, filename: "painting251.png")

BoardsPins.create(
  pin_id: 10,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 256",
  description: "Bob Ross painting 256",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting256.png")
pin.photo.attach(io: file, filename: "painting256.png")

BoardsPins.create(
  pin_id: 11,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 257",
  description: "Bob Ross painting 257",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting257.png")
pin.photo.attach(io: file, filename: "painting257.png")

BoardsPins.create(
  pin_id: 12,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 258",
  description: "Bob Ross painting 258",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting258.png")
pin.photo.attach(io: file, filename: "painting258.png")

BoardsPins.create(
  pin_id: 13,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 259",
  description: "Bob Ross painting 259",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting259.png")
pin.photo.attach(io: file, filename: "painting259.png")

BoardsPins.create(
  pin_id: 14,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 260",
  description: "Bob Ross painting 260",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting260.png")
pin.photo.attach(io: file, filename: "painting260.png")

BoardsPins.create(
  pin_id: 15,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 261",
  description: "Bob Ross painting 261",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting261.png")
pin.photo.attach(io: file, filename: "painting261.png")

BoardsPins.create(
  pin_id: 16,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 262",
  description: "Bob Ross painting 262",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting262.png")
pin.photo.attach(io: file, filename: "painting262.png")

BoardsPins.create(
  pin_id: 17,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 263",
  description: "Bob Ross painting 263",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting263.png")
pin.photo.attach(io: file, filename: "painting263.png")

BoardsPins.create(
  pin_id: 18,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 264",
  description: "Bob Ross painting 264",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting264.png")
pin.photo.attach(io: file, filename: "painting264.png")

BoardsPins.create(
  pin_id: 19,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 265",
  description: "Bob Ross painting 265",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting265.png")
pin.photo.attach(io: file, filename: "painting265.png")

BoardsPins.create(
  pin_id: 20,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 266",
  description: "Bob Ross painting 266",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting266.png")
pin.photo.attach(io: file, filename: "painting266.png")

BoardsPins.create(
  pin_id: 21,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 267",
  description: "Bob Ross painting 267",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting267.png")
pin.photo.attach(io: file, filename: "painting267.png")

BoardsPins.create(
  pin_id: 22,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 268",
  description: "Bob Ross painting 268",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting268.png")
pin.photo.attach(io: file, filename: "painting268.png")

BoardsPins.create(
  pin_id: 23,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 269",
  description: "Bob Ross painting 269",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting269.png")
pin.photo.attach(io: file, filename: "painting269.png")

BoardsPins.create(
  pin_id: 24,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 270",
  description: "Bob Ross painting 270",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting270.png")
pin.photo.attach(io: file, filename: "painting270.png")

BoardsPins.create(
  pin_id: 25,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 271",
  description: "Bob Ross painting 271",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting271.png")
pin.photo.attach(io: file, filename: "painting271.png")

BoardsPins.create(
  pin_id: 26,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 272",
  description: "Bob Ross painting 272",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting272.png")
pin.photo.attach(io: file, filename: "painting272.png")

BoardsPins.create(
  pin_id: 27,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 273",
  description: "Bob Ross painting 273",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting273.png")
pin.photo.attach(io: file, filename: "painting273.png")

BoardsPins.create(
  pin_id: 28,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 274",
  description: "Bob Ross painting 274",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting274.png")
pin.photo.attach(io: file, filename: "painting274.png")

BoardsPins.create(
  pin_id: 29,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 275",
  description: "Bob Ross painting 275",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting275.png")
pin.photo.attach(io: file, filename: "painting275.png")

BoardsPins.create(
  pin_id: 30,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 276",
  description: "Bob Ross painting 276",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting276.png")
pin.photo.attach(io: file, filename: "painting276.png")

BoardsPins.create(
  pin_id: 31,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 277",
  description: "Bob Ross painting 277",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting277.png")
pin.photo.attach(io: file, filename: "painting277.png")

BoardsPins.create(
  pin_id: 32,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 278",
  description: "Bob Ross painting 278",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting278.png")
pin.photo.attach(io: file, filename: "painting278.png")

BoardsPins.create(
  pin_id: 33,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 279",
  description: "Bob Ross painting 279",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting279.png")
pin.photo.attach(io: file, filename: "painting279.png")

BoardsPins.create(
  pin_id: 34,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 280",
  description: "Bob Ross painting 280",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting280.png")
pin.photo.attach(io: file, filename: "painting280.png")

BoardsPins.create(
  pin_id: 35,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 281",
  description: "Bob Ross painting 281",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting281.png")
pin.photo.attach(io: file, filename: "painting281.png")

BoardsPins.create(
  pin_id: 36,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 282",
  description: "Bob Ross painting 282",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting282.png")
pin.photo.attach(io: file, filename: "painting282.png")

BoardsPins.create(
  pin_id: 37,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 283",
  description: "Bob Ross painting 283",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting283.png")
pin.photo.attach(io: file, filename: "painting283.png")

BoardsPins.create(
  pin_id: 38,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 284",
  description: "Bob Ross painting 284",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting284.png")
pin.photo.attach(io: file, filename: "painting284.png")

BoardsPins.create(
  pin_id: 39,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 285",
  description: "Bob Ross painting 285",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting285.png")
pin.photo.attach(io: file, filename: "painting285.png")

BoardsPins.create(
  pin_id: 40,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 286",
  description: "Bob Ross painting 286",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting286.png")
pin.photo.attach(io: file, filename: "painting286.png")

BoardsPins.create(
  pin_id: 41,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 287",
  description: "Bob Ross painting 287",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting287.png")
pin.photo.attach(io: file, filename: "painting287.png")

BoardsPins.create(
  pin_id: 42,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 288",
  description: "Bob Ross painting 288",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting288.png")
pin.photo.attach(io: file, filename: "painting288.png")

BoardsPins.create(
  pin_id: 43,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 289",
  description: "Bob Ross painting 289",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting289.png")
pin.photo.attach(io: file, filename: "painting289.png")

BoardsPins.create(
  pin_id: 44,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 290",
  description: "Bob Ross painting 290",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting290.png")
pin.photo.attach(io: file, filename: "painting290.png")

BoardsPins.create(
  pin_id: 45,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 291",
  description: "Bob Ross painting 291",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting291.png")
pin.photo.attach(io: file, filename: "painting291.png")

BoardsPins.create(
  pin_id: 46,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 292",
  description: "Bob Ross painting 292",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting292.png")
pin.photo.attach(io: file, filename: "painting292.png")

BoardsPins.create(
  pin_id: 47,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 293",
  description: "Bob Ross painting 293",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting293.png")
pin.photo.attach(io: file, filename: "painting293.png")

BoardsPins.create(
  pin_id: 48,
  board_id: 2
)

pin = Pin.create(
  title: "Bob Ross painting 294",
  description: "Bob Ross painting 294",
  url: "https://www.twoinchbrush.com/all-paintings",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/painting294.png")
pin.photo.attach(io: file, filename: "painting294.png")

BoardsPins.create(
  pin_id: 49,
  board_id: 2
)

pin = Pin.create(
  title: "Fine Art 50",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA50.jpg")
pin.photo.attach(io: file, filename: "FA50.jpg")

BoardsPins.create(
  pin_id: 50,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 51",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA51.jpg")
pin.photo.attach(io: file, filename: "FA51.jpg")

BoardsPins.create(
  pin_id: 51,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 52",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA52.jpg")
pin.photo.attach(io: file, filename: "FA52.jpg")

BoardsPins.create(
  pin_id: 52,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 53",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA53.jpg")
pin.photo.attach(io: file, filename: "FA53.jpg")

BoardsPins.create(
  pin_id: 53,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 54",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA54.jpg")
pin.photo.attach(io: file, filename: "FA54.jpg")

BoardsPins.create(
  pin_id: 54,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 55",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA55.jpg")
pin.photo.attach(io: file, filename: "FA55.jpg")

BoardsPins.create(
  pin_id: 55,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 56",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA56.jpg")
pin.photo.attach(io: file, filename: "FA56.jpg")

BoardsPins.create(
  pin_id: 56,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 57",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA57.jpg")
pin.photo.attach(io: file, filename: "FA57.jpg")

BoardsPins.create(
  pin_id: 57,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 58",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA58.jpg")
pin.photo.attach(io: file, filename: "FA58.jpg")

BoardsPins.create(
  pin_id: 58,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 59",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA59.jpg")
pin.photo.attach(io: file, filename: "FA59.jpg")

BoardsPins.create(
  pin_id: 59,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 60",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA60.jpg")
pin.photo.attach(io: file, filename: "FA60.jpg")

BoardsPins.create(
  pin_id: 60,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 61",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA61.jpg")
pin.photo.attach(io: file, filename: "FA61.jpg")

BoardsPins.create(
  pin_id: 61,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 62",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA62.jpg")
pin.photo.attach(io: file, filename: "FA62.jpg")

BoardsPins.create(
  pin_id: 62,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 63",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA63.jpg")
pin.photo.attach(io: file, filename: "FA63.jpg")

BoardsPins.create(
  pin_id: 63,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 64",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA64.jpg")
pin.photo.attach(io: file, filename: "FA64.jpg")

BoardsPins.create(
  pin_id: 64,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 65",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA65.jpg")
pin.photo.attach(io: file, filename: "FA65.jpg")

BoardsPins.create(
  pin_id: 65,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 66",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA66.jpg")
pin.photo.attach(io: file, filename: "FA66.jpg")

BoardsPins.create(
  pin_id: 66,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 67",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA67.jpg")
pin.photo.attach(io: file, filename: "FA67.jpg")

BoardsPins.create(
  pin_id: 67,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 68",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA68.jpg")
pin.photo.attach(io: file, filename: "FA68.jpg")

BoardsPins.create(
  pin_id: 68,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 69",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA69.jpg")
pin.photo.attach(io: file, filename: "FA69.jpg")

BoardsPins.create(
  pin_id: 69,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 70",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA70.jpg")
pin.photo.attach(io: file, filename: "FA70.jpg")

BoardsPins.create(
  pin_id: 70,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 71",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA71.jpg")
pin.photo.attach(io: file, filename: "FA71.jpg")

BoardsPins.create(
  pin_id: 71,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 72",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA72.jpg")
pin.photo.attach(io: file, filename: "FA72.jpg")

BoardsPins.create(
  pin_id: 72,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 73",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA73.jpg")
pin.photo.attach(io: file, filename: "FA73.jpg")

BoardsPins.create(
  pin_id: 73,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 74",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA74.jpg")
pin.photo.attach(io: file, filename: "FA74.jpg")

BoardsPins.create(
  pin_id: 74,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 75",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA75.jpg")
pin.photo.attach(io: file, filename: "FA75.jpg")

BoardsPins.create(
  pin_id: 75,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 76",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA76.jpg")
pin.photo.attach(io: file, filename: "FA76.jpg")

BoardsPins.create(
  pin_id: 76,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 77",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA77.jpg")
pin.photo.attach(io: file, filename: "FA77.jpg")

BoardsPins.create(
  pin_id: 77,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 78",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA78.jpg")
pin.photo.attach(io: file, filename: "FA78.jpg")

BoardsPins.create(
  pin_id: 78,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 79",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA79.jpg")
pin.photo.attach(io: file, filename: "FA79.jpg")

BoardsPins.create(
  pin_id: 79,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 80",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA80.jpg")
pin.photo.attach(io: file, filename: "FA80.jpg")

BoardsPins.create(
  pin_id: 80,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 81",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA81.jpg")
pin.photo.attach(io: file, filename: "FA81.jpg")

BoardsPins.create(
  pin_id: 81,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 82",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA82.jpg")
pin.photo.attach(io: file, filename: "FA82.jpg")

BoardsPins.create(
  pin_id: 82,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 83",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA83.jpg")
pin.photo.attach(io: file, filename: "FA83.jpg")

BoardsPins.create(
  pin_id: 83,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 84",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA84.jpg")
pin.photo.attach(io: file, filename: "FA84.jpg")

BoardsPins.create(
  pin_id: 84,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 85",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA85.jpg")
pin.photo.attach(io: file, filename: "FA85.jpg")

BoardsPins.create(
  pin_id: 85,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 86",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA86.jpg")
pin.photo.attach(io: file, filename: "FA86.jpg")

BoardsPins.create(
  pin_id: 86,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 87",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA87.jpg")
pin.photo.attach(io: file, filename: "FA87.jpg")

BoardsPins.create(
  pin_id: 87,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 88",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA88.jpg")
pin.photo.attach(io: file, filename: "FA88.jpg")

BoardsPins.create(
  pin_id: 88,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 89",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA89.jpg")
pin.photo.attach(io: file, filename: "FA89.jpg")

BoardsPins.create(
  pin_id: 89,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 90",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA90.jpg")
pin.photo.attach(io: file, filename: "FA90.jpg")

BoardsPins.create(
  pin_id: 90,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 91",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA91.jpg")
pin.photo.attach(io: file, filename: "FA91.jpg")

BoardsPins.create(
  pin_id: 91,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 92",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA92.jpg")
pin.photo.attach(io: file, filename: "FA92.jpg")

BoardsPins.create(
  pin_id: 92,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 93",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA93.jpg")
pin.photo.attach(io: file, filename: "FA93.jpg")

BoardsPins.create(
  pin_id: 93,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 94",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA94.jpg")
pin.photo.attach(io: file, filename: "FA94.jpg")

BoardsPins.create(
  pin_id: 94,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 95",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA95.jpg")
pin.photo.attach(io: file, filename: "FA95.jpg")

BoardsPins.create(
  pin_id: 95,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 96",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA96.jpg")
pin.photo.attach(io: file, filename: "FA96.jpg")

BoardsPins.create(
  pin_id: 96,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 97",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA97.jpg")
pin.photo.attach(io: file, filename: "FA97.jpg")

BoardsPins.create(
  pin_id: 97,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 98",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA98.jpg")
pin.photo.attach(io: file, filename: "FA98.jpg")

BoardsPins.create(
  pin_id: 98,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 99",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA99.jpg")
pin.photo.attach(io: file, filename: "FA99.jpg")

BoardsPins.create(
  pin_id: 99,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 100",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA100.jpg")
pin.photo.attach(io: file, filename: "FA100.jpg")

BoardsPins.create(
  pin_id: 100,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 101",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA101.jpg")
pin.photo.attach(io: file, filename: "FA101.jpg")

BoardsPins.create(
  pin_id: 101,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 102",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA102.jpg")
pin.photo.attach(io: file, filename: "FA102.jpg")

BoardsPins.create(
  pin_id: 102,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 103",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA103.jpg")
pin.photo.attach(io: file, filename: "FA103.jpg")

BoardsPins.create(
  pin_id: 103,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 104",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA104.jpg")
pin.photo.attach(io: file, filename: "FA104.jpg")

BoardsPins.create(
  pin_id: 104,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 105",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA105.jpg")
pin.photo.attach(io: file, filename: "FA105.jpg")

BoardsPins.create(
  pin_id: 105,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 106",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA106.jpg")
pin.photo.attach(io: file, filename: "FA106.jpg")

BoardsPins.create(
  pin_id: 106,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 107",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA107.jpg")
pin.photo.attach(io: file, filename: "FA107.jpg")

BoardsPins.create(
  pin_id: 107,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 108",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA108.jpg")
pin.photo.attach(io: file, filename: "FA108.jpg")

BoardsPins.create(
  pin_id: 108,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 109",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA109.jpg")
pin.photo.attach(io: file, filename: "FA109.jpg")

BoardsPins.create(
  pin_id: 109,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 110",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA110.jpg")
pin.photo.attach(io: file, filename: "FA110.jpg")

BoardsPins.create(
  pin_id: 110,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 111",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA111.jpg")
pin.photo.attach(io: file, filename: "FA111.jpg")

BoardsPins.create(
  pin_id: 111,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 112",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA112.jpg")
pin.photo.attach(io: file, filename: "FA112.jpg")

BoardsPins.create(
  pin_id: 112,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 113",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA113.jpg")
pin.photo.attach(io: file, filename: "FA113.jpg")

BoardsPins.create(
  pin_id: 113,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 114",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA114.jpg")
pin.photo.attach(io: file, filename: "FA114.jpg")

BoardsPins.create(
  pin_id: 114,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 115",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA115.jpg")
pin.photo.attach(io: file, filename: "FA115.jpg")

BoardsPins.create(
  pin_id: 115,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 116",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA116.jpg")
pin.photo.attach(io: file, filename: "FA116.jpg")

BoardsPins.create(
  pin_id: 116,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 117",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA117.jpg")
pin.photo.attach(io: file, filename: "FA117.jpg")

BoardsPins.create(
  pin_id: 117,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 118",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA118.jpg")
pin.photo.attach(io: file, filename: "FA118.jpg")

BoardsPins.create(
  pin_id: 118,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 119",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA119.jpg")
pin.photo.attach(io: file, filename: "FA119.jpg")

BoardsPins.create(
  pin_id: 119,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 120",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA120.jpg")
pin.photo.attach(io: file, filename: "FA120.jpg")

BoardsPins.create(
  pin_id: 120,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 121",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA121.jpg")
pin.photo.attach(io: file, filename: "FA121.jpg")

BoardsPins.create(
  pin_id: 121,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 122",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA122.jpg")
pin.photo.attach(io: file, filename: "FA122.jpg")

BoardsPins.create(
  pin_id: 122,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 123",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA123.jpg")
pin.photo.attach(io: file, filename: "FA123.jpg")

BoardsPins.create(
  pin_id: 123,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 124",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA124.jpg")
pin.photo.attach(io: file, filename: "FA124.jpg")

BoardsPins.create(
  pin_id: 124,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 125",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA125.jpg")
pin.photo.attach(io: file, filename: "FA125.jpg")

BoardsPins.create(
  pin_id: 125,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 126",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA126.jpg")
pin.photo.attach(io: file, filename: "FA126.jpg")

BoardsPins.create(
  pin_id: 126,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 127",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA127.jpg")
pin.photo.attach(io: file, filename: "FA127.jpg")

BoardsPins.create(
  pin_id: 127,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 128",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA128.jpg")
pin.photo.attach(io: file, filename: "FA128.jpg")

BoardsPins.create(
  pin_id: 128,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 129",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA129.jpg")
pin.photo.attach(io: file, filename: "FA129.jpg")

BoardsPins.create(
  pin_id: 129,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 130",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA130.jpg")
pin.photo.attach(io: file, filename: "FA130.jpg")

BoardsPins.create(
  pin_id: 130,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 131",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA131.jpg")
pin.photo.attach(io: file, filename: "FA131.jpg")

BoardsPins.create(
  pin_id: 131,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 132",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA132.jpg")
pin.photo.attach(io: file, filename: "FA132.jpg")

BoardsPins.create(
  pin_id: 132,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 133",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA133.jpg")
pin.photo.attach(io: file, filename: "FA133.jpg")

BoardsPins.create(
  pin_id: 133,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 134",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA134.jpg")
pin.photo.attach(io: file, filename: "FA134.jpg")

BoardsPins.create(
  pin_id: 134,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 135",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA135.jpg")
pin.photo.attach(io: file, filename: "FA135.jpg")

BoardsPins.create(
  pin_id: 135,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 136",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA136.jpg")
pin.photo.attach(io: file, filename: "FA136.jpg")

BoardsPins.create(
  pin_id: 136,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 137",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA137.jpg")
pin.photo.attach(io: file, filename: "FA137.jpg")

BoardsPins.create(
  pin_id: 137,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 138",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA138.jpg")
pin.photo.attach(io: file, filename: "FA138.jpg")

BoardsPins.create(
  pin_id: 138,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 139",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA139.jpg")
pin.photo.attach(io: file, filename: "FA139.jpg")

BoardsPins.create(
  pin_id: 139,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 140",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA140.jpg")
pin.photo.attach(io: file, filename: "FA140.jpg")

BoardsPins.create(
  pin_id: 140,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 141",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA141.jpg")
pin.photo.attach(io: file, filename: "FA141.jpg")

BoardsPins.create(
  pin_id: 141,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 142",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA142.jpg")
pin.photo.attach(io: file, filename: "FA142.jpg")

BoardsPins.create(
  pin_id: 142,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 143",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA143.jpg")
pin.photo.attach(io: file, filename: "FA143.jpg")

BoardsPins.create(
  pin_id: 143,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 144",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA144.jpg")
pin.photo.attach(io: file, filename: "FA144.jpg")

BoardsPins.create(
  pin_id: 144,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 145",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA145.jpg")
pin.photo.attach(io: file, filename: "FA145.jpg")

BoardsPins.create(
  pin_id: 145,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 146",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA146.jpg")
pin.photo.attach(io: file, filename: "FA146.jpg")

BoardsPins.create(
  pin_id: 146,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 147",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA147.jpg")
pin.photo.attach(io: file, filename: "FA147.jpg")

BoardsPins.create(
  pin_id: 147,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 148",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA148.jpg")
pin.photo.attach(io: file, filename: "FA148.jpg")

BoardsPins.create(
  pin_id: 148,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 149",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA149.jpg")
pin.photo.attach(io: file, filename: "FA149.jpg")

BoardsPins.create(
  pin_id: 149,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 150",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA150.jpg")
pin.photo.attach(io: file, filename: "FA150.jpg")

BoardsPins.create(
  pin_id: 150,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 151",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA151.jpg")
pin.photo.attach(io: file, filename: "FA151.jpg")

BoardsPins.create(
  pin_id: 151,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 152",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA152.jpg")
pin.photo.attach(io: file, filename: "FA152.jpg")

BoardsPins.create(
  pin_id: 152,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 153",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA153.jpg")
pin.photo.attach(io: file, filename: "FA153.jpg")

BoardsPins.create(
  pin_id: 153,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 154",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA154.jpg")
pin.photo.attach(io: file, filename: "FA154.jpg")

BoardsPins.create(
  pin_id: 154,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 155",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA155.jpg")
pin.photo.attach(io: file, filename: "FA155.jpg")

BoardsPins.create(
  pin_id: 155,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 156",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA156.jpg")
pin.photo.attach(io: file, filename: "FA156.jpg")

BoardsPins.create(
  pin_id: 156,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 157",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA157.jpg")
pin.photo.attach(io: file, filename: "FA157.jpg")

BoardsPins.create(
  pin_id: 157,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 158",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA158.jpg")
pin.photo.attach(io: file, filename: "FA158.jpg")

BoardsPins.create(
  pin_id: 158,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 159",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA159.jpg")
pin.photo.attach(io: file, filename: "FA159.jpg")

BoardsPins.create(
  pin_id: 159,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 160",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA160.jpg")
pin.photo.attach(io: file, filename: "FA160.jpg")

BoardsPins.create(
  pin_id: 160,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 161",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA161.jpg")
pin.photo.attach(io: file, filename: "FA161.jpg")

BoardsPins.create(
  pin_id: 161,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 162",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA162.jpg")
pin.photo.attach(io: file, filename: "FA162.jpg")

BoardsPins.create(
  pin_id: 162,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 163",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA163.jpg")
pin.photo.attach(io: file, filename: "FA163.jpg")

BoardsPins.create(
  pin_id: 163,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 164",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA164.jpg")
pin.photo.attach(io: file, filename: "FA164.jpg")

BoardsPins.create(
  pin_id: 164,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 165",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA165.jpg")
pin.photo.attach(io: file, filename: "FA165.jpg")

BoardsPins.create(
  pin_id: 165,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 166",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA166.jpg")
pin.photo.attach(io: file, filename: "FA166.jpg")

BoardsPins.create(
  pin_id: 166,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 167",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA167.jpg")
pin.photo.attach(io: file, filename: "FA167.jpg")

BoardsPins.create(
  pin_id: 167,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 168",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA168.jpg")
pin.photo.attach(io: file, filename: "FA168.jpg")

BoardsPins.create(
  pin_id: 168,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 169",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA169.jpg")
pin.photo.attach(io: file, filename: "FA169.jpg")

BoardsPins.create(
  pin_id: 169,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 170",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA170.jpg")
pin.photo.attach(io: file, filename: "FA170.jpg")

BoardsPins.create(
  pin_id: 170,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 171",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA171.jpg")
pin.photo.attach(io: file, filename: "FA171.jpg")

BoardsPins.create(
  pin_id: 171,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 172",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA172.jpg")
pin.photo.attach(io: file, filename: "FA172.jpg")

BoardsPins.create(
  pin_id: 172,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 173",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA173.jpg")
pin.photo.attach(io: file, filename: "FA173.jpg")

BoardsPins.create(
  pin_id: 173,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 174",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA174.jpg")
pin.photo.attach(io: file, filename: "FA174.jpg")

BoardsPins.create(
  pin_id: 174,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 175",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA175.jpg")
pin.photo.attach(io: file, filename: "FA175.jpg")

BoardsPins.create(
  pin_id: 175,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 176",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA176.jpg")
pin.photo.attach(io: file, filename: "FA176.jpg")

BoardsPins.create(
  pin_id: 176,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 177",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA177.jpg")
pin.photo.attach(io: file, filename: "FA177.jpg")

BoardsPins.create(
  pin_id: 177,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 178",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA178.jpg")
pin.photo.attach(io: file, filename: "FA178.jpg")

BoardsPins.create(
  pin_id: 178,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 179",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA179.jpg")
pin.photo.attach(io: file, filename: "FA179.jpg")

BoardsPins.create(
  pin_id: 179,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 180",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA180.jpg")
pin.photo.attach(io: file, filename: "FA180.jpg")

BoardsPins.create(
  pin_id: 180,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 181",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA181.jpg")
pin.photo.attach(io: file, filename: "FA181.jpg")

BoardsPins.create(
  pin_id: 181,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 182",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA182.jpg")
pin.photo.attach(io: file, filename: "FA182.jpg")

BoardsPins.create(
  pin_id: 182,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 183",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA183.jpg")
pin.photo.attach(io: file, filename: "FA183.jpg")

BoardsPins.create(
  pin_id: 183,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 184",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA184.jpg")
pin.photo.attach(io: file, filename: "FA184.jpg")

BoardsPins.create(
  pin_id: 184,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 185",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA185.jpg")
pin.photo.attach(io: file, filename: "FA185.jpg")

BoardsPins.create(
  pin_id: 185,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 186",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA186.jpg")
pin.photo.attach(io: file, filename: "FA186.jpg")

BoardsPins.create(
  pin_id: 186,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 187",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA187.jpg")
pin.photo.attach(io: file, filename: "FA187.jpg")

BoardsPins.create(
  pin_id: 187,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 188",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA188.jpg")
pin.photo.attach(io: file, filename: "FA188.jpg")

BoardsPins.create(
  pin_id: 188,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 189",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA189.jpg")
pin.photo.attach(io: file, filename: "FA189.jpg")

BoardsPins.create(
  pin_id: 189,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 190",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA190.jpg")
pin.photo.attach(io: file, filename: "FA190.jpg")

BoardsPins.create(
  pin_id: 190,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 191",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA191.jpg")
pin.photo.attach(io: file, filename: "FA191.jpg")

BoardsPins.create(
  pin_id: 191,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 192",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA192.jpg")
pin.photo.attach(io: file, filename: "FA192.jpg")

BoardsPins.create(
  pin_id: 192,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 193",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA193.jpg")
pin.photo.attach(io: file, filename: "FA193.jpg")

BoardsPins.create(
  pin_id: 193,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 194",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA194.jpg")
pin.photo.attach(io: file, filename: "FA194.jpg")

BoardsPins.create(
  pin_id: 194,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 195",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA195.jpg")
pin.photo.attach(io: file, filename: "FA195.jpg")

BoardsPins.create(
  pin_id: 195,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 196",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA196.jpg")
pin.photo.attach(io: file, filename: "FA196.jpg")

BoardsPins.create(
  pin_id: 196,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 197",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA197.jpg")
pin.photo.attach(io: file, filename: "FA197.jpg")

BoardsPins.create(
  pin_id: 197,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 198",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA198.jpg")
pin.photo.attach(io: file, filename: "FA198.jpg")

BoardsPins.create(
  pin_id: 198,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 199",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA199.jpg")
pin.photo.attach(io: file, filename: "FA199.jpg")

BoardsPins.create(
  pin_id: 199,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 200",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA200.jpg")
pin.photo.attach(io: file, filename: "FA200.jpg")

BoardsPins.create(
  pin_id: 200,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 201",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA201.jpg")
pin.photo.attach(io: file, filename: "FA201.jpg")

BoardsPins.create(
  pin_id: 201,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 202",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA202.jpg")
pin.photo.attach(io: file, filename: "FA202.jpg")

BoardsPins.create(
  pin_id: 202,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 203",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA203.jpg")
pin.photo.attach(io: file, filename: "FA203.jpg")

BoardsPins.create(
  pin_id: 203,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 204",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA204.jpg")
pin.photo.attach(io: file, filename: "FA204.jpg")

BoardsPins.create(
  pin_id: 204,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 205",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA205.jpg")
pin.photo.attach(io: file, filename: "FA205.jpg")

BoardsPins.create(
  pin_id: 205,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 206",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA206.jpg")
pin.photo.attach(io: file, filename: "FA206.jpg")

BoardsPins.create(
  pin_id: 206,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 207",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA207.jpg")
pin.photo.attach(io: file, filename: "FA207.jpg")

BoardsPins.create(
  pin_id: 207,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 208",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA208.jpg")
pin.photo.attach(io: file, filename: "FA208.jpg")

BoardsPins.create(
  pin_id: 208,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 209",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA209.jpg")
pin.photo.attach(io: file, filename: "FA209.jpg")

BoardsPins.create(
  pin_id: 209,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 210",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA210.jpg")
pin.photo.attach(io: file, filename: "FA210.jpg")

BoardsPins.create(
  pin_id: 210,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 211",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA211.jpg")
pin.photo.attach(io: file, filename: "FA211.jpg")

BoardsPins.create(
  pin_id: 211,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 212",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA212.jpg")
pin.photo.attach(io: file, filename: "FA212.jpg")

BoardsPins.create(
  pin_id: 212,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 213",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA213.jpg")
pin.photo.attach(io: file, filename: "FA213.jpg")

BoardsPins.create(
  pin_id: 213,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 214",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA214.jpg")
pin.photo.attach(io: file, filename: "FA214.jpg")

BoardsPins.create(
  pin_id: 214,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 215",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA215.jpg")
pin.photo.attach(io: file, filename: "FA215.jpg")

BoardsPins.create(
  pin_id: 215,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 216",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA216.jpg")
pin.photo.attach(io: file, filename: "FA216.jpg")

BoardsPins.create(
  pin_id: 216,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 217",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA217.jpg")
pin.photo.attach(io: file, filename: "FA217.jpg")

BoardsPins.create(
  pin_id: 217,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 218",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA218.jpg")
pin.photo.attach(io: file, filename: "FA218.jpg")

BoardsPins.create(
  pin_id: 218,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 219",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA219.jpg")
pin.photo.attach(io: file, filename: "FA219.jpg")

BoardsPins.create(
  pin_id: 219,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 220",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA220.jpg")
pin.photo.attach(io: file, filename: "FA220.jpg")

BoardsPins.create(
  pin_id: 220,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 221",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA221.jpg")
pin.photo.attach(io: file, filename: "FA221.jpg")

BoardsPins.create(
  pin_id: 221,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 222",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA222.jpg")
pin.photo.attach(io: file, filename: "FA222.jpg")

BoardsPins.create(
  pin_id: 222,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 223",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA223.jpg")
pin.photo.attach(io: file, filename: "FA223.jpg")

BoardsPins.create(
  pin_id: 223,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 224",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA224.jpg")
pin.photo.attach(io: file, filename: "FA224.jpg")

BoardsPins.create(
  pin_id: 224,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 225",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA225.jpg")
pin.photo.attach(io: file, filename: "FA225.jpg")

BoardsPins.create(
  pin_id: 225,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 226",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA226.jpg")
pin.photo.attach(io: file, filename: "FA226.jpg")

BoardsPins.create(
  pin_id: 226,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 227",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA227.jpg")
pin.photo.attach(io: file, filename: "FA227.jpg")

BoardsPins.create(
  pin_id: 227,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 228",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA228.jpg")
pin.photo.attach(io: file, filename: "FA228.jpg")

BoardsPins.create(
  pin_id: 228,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 229",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA229.jpg")
pin.photo.attach(io: file, filename: "FA229.jpg")

BoardsPins.create(
  pin_id: 229,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 230",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA230.jpg")
pin.photo.attach(io: file, filename: "FA230.jpg")

BoardsPins.create(
  pin_id: 230,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 231",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA231.jpg")
pin.photo.attach(io: file, filename: "FA231.jpg")

BoardsPins.create(
  pin_id: 231,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 232",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA232.jpg")
pin.photo.attach(io: file, filename: "FA232.jpg")

BoardsPins.create(
  pin_id: 232,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 233",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA233.jpg")
pin.photo.attach(io: file, filename: "FA233.jpg")

BoardsPins.create(
  pin_id: 233,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 234",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA234.jpg")
pin.photo.attach(io: file, filename: "FA234.jpg")

BoardsPins.create(
  pin_id: 234,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 235",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA235.jpg")
pin.photo.attach(io: file, filename: "FA235.jpg")

BoardsPins.create(
  pin_id: 235,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 236",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA236.jpg")
pin.photo.attach(io: file, filename: "FA236.jpg")

BoardsPins.create(
  pin_id: 236,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 237",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA237.jpg")
pin.photo.attach(io: file, filename: "FA237.jpg")

BoardsPins.create(
  pin_id: 237,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 238",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA238.jpg")
pin.photo.attach(io: file, filename: "FA238.jpg")

BoardsPins.create(
  pin_id: 238,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 239",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA239.jpg")
pin.photo.attach(io: file, filename: "FA239.jpg")

BoardsPins.create(
  pin_id: 239,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 240",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA240.jpg")
pin.photo.attach(io: file, filename: "FA240.jpg")

BoardsPins.create(
  pin_id: 240,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 241",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA241.jpg")
pin.photo.attach(io: file, filename: "FA241.jpg")

BoardsPins.create(
  pin_id: 241,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 242",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA242.jpg")
pin.photo.attach(io: file, filename: "FA242.jpg")

BoardsPins.create(
  pin_id: 242,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 243",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA243.jpg")
pin.photo.attach(io: file, filename: "FA243.jpg")

BoardsPins.create(
  pin_id: 243,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 244",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA244.jpg")
pin.photo.attach(io: file, filename: "FA244.jpg")

BoardsPins.create(
  pin_id: 244,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 245",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA245.jpg")
pin.photo.attach(io: file, filename: "FA245.jpg")

BoardsPins.create(
  pin_id: 245,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 246",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA246.jpg")
pin.photo.attach(io: file, filename: "FA246.jpg")

BoardsPins.create(
  pin_id: 246,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 247",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA247.jpg")
pin.photo.attach(io: file, filename: "FA247.jpg")

BoardsPins.create(
  pin_id: 247,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 248",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA248.jpg")
pin.photo.attach(io: file, filename: "FA248.jpg")

BoardsPins.create(
  pin_id: 248,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 249",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA249.jpg")
pin.photo.attach(io: file, filename: "FA249.jpg")

BoardsPins.create(
  pin_id: 249,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 250",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA250.jpg")
pin.photo.attach(io: file, filename: "FA250.jpg")

BoardsPins.create(
  pin_id: 250,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 251",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA251.jpg")
pin.photo.attach(io: file, filename: "FA251.jpg")

BoardsPins.create(
  pin_id: 251,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 252",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA252.jpg")
pin.photo.attach(io: file, filename: "FA252.jpg")

BoardsPins.create(
  pin_id: 252,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 253",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA253.jpg")
pin.photo.attach(io: file, filename: "FA253.jpg")

BoardsPins.create(
  pin_id: 253,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 254",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA254.jpg")
pin.photo.attach(io: file, filename: "FA254.jpg")

BoardsPins.create(
  pin_id: 254,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 256",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA256.jpg")
pin.photo.attach(io: file, filename: "FA256.jpg")

BoardsPins.create(
  pin_id: 256,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 257",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA257.jpg")
pin.photo.attach(io: file, filename: "FA257.jpg")

BoardsPins.create(
  pin_id: 257,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 258",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA258.jpg")
pin.photo.attach(io: file, filename: "FA258.jpg")

BoardsPins.create(
  pin_id: 258,
  board_id: 1
)

pin = Pin.create(
  title: "Fine Art 259",
  description: "fine fine fine fine fine",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/FA259.jpg")
pin.photo.attach(io: file, filename: "FA259.jpg")

BoardsPins.create(
  pin_id: 259,
  board_id: 1
)