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
# user_id: 1
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

# user_id: 2
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

# user_id: 3
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

# user_id: 4
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

# user_id: 5
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
# board_id: 1
Board.create(
  title: "By the water",
  description: "My favorite Bob Ross paintings by the water",
  secret: false,
  user_id: 2
)

# board_id: 2
Board.create(
  title: "Evergreens",
  description: "My favorite Bob Ross paintings with Evergreens",
  secret: false,
  user_id: 3
)

# board_id: 3
Board.create(
  title: "Tranquil Forest",
  description: "My favorite Bob Ross paintings of forests",
  secret: false,
  user_id: 4
)

# board_id: 4
Board.create(
  title: "Winter is coming",
  description: "My favorite Bob Ross paintings of winter",
  secret: false,
  user_id: 5
)

# board_id: 5
Board.create(
  title: "Abstract Artwork",
  description: "Amazing collection to add at home",
  secret: true,
  user_id: 1
)

# board_id: 6
Board.create(
  title: "Aesthetic Animals",
  description: "Lovely creatures to be admired",
  secret: false,
  user_id: 1
)

# board_id: 7
Board.create(
  title: "Nature's Beauty",
  description: "Truly remarkable work",
  secret: false,
  user_id: 1
)

# board_id: 8
Board.create(
  title: "Lavish Lands",
  description: "Every place has a story",
  secret: false,
  user_id: 2
)

# board_id: 9
Board.create(
  title: "People Paintings",
  description: "Everyone has a story",
  secret: false,
  user_id: 4
)



### PINS & BOARDSPINS

# ABSTRACT ART
pin = Pin.create(
  title: "",
  description: "Abstract Art 1",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/abstract_art/AB00001.jpg")
pin.photo.attach(io: file, filename: "AB00001.jpg")

BoardsPins.create(
  pin_id: 1,
  board_id: 5
)

pin = Pin.create(
  title: "Lovely Tree Silhouette",
  description: "Abstract Art 2",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/abstract_art/AB00002.jpg")
pin.photo.attach(io: file, filename: "AB00002.jpg")

BoardsPins.create(
  pin_id: 2,
  board_id: 5
)

pin = Pin.create(
  title: "",
  description: "Abstract Art 3",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/abstract_art/AB00003.jpg")
pin.photo.attach(io: file, filename: "AB00003.jpg")

BoardsPins.create(
  pin_id: 3,
  board_id: 5
)

pin = Pin.create(
  title: "",
  description: "Abstract Art 4",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/abstract_art/AB00004.jpg")
pin.photo.attach(io: file, filename: "AB00004.jpg")

BoardsPins.create(
  pin_id: 4,
  board_id: 5
)

pin = Pin.create(
  title: "",
  description: "Abstract Art 5",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/abstract_art/AB00005.jpg")
pin.photo.attach(io: file, filename: "AB00005.jpg")

BoardsPins.create(
  pin_id: 5,
  board_id: 5
)

pin = Pin.create(
  title: "",
  description: "Abstract Art 6",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/abstract_art/AB00006.jpg")
pin.photo.attach(io: file, filename: "AB00006.jpg")

BoardsPins.create(
  pin_id: 6,
  board_id: 5
)

pin = Pin.create(
  title: "",
  description: "Abstract Art 7",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/abstract_art/AB00007.jpg")
pin.photo.attach(io: file, filename: "AB00007.jpg")

BoardsPins.create(
  pin_id: 7,
  board_id: 5
)

pin = Pin.create(
  title: "",
  description: "Abstract Art 8",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/abstract_art/AB00008.jpg")
pin.photo.attach(io: file, filename: "AB00008.jpg")

BoardsPins.create(
  pin_id: 8,
  board_id: 5
)

pin = Pin.create(
  title: "",
  description: "Abstract Art 9",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/abstract_art/AB00009.jpg")
pin.photo.attach(io: file, filename: "AB00009.jpg")

BoardsPins.create(
  pin_id: 9,
  board_id: 5
)

pin = Pin.create(
  title: "",
  description: "Abstract Art 10",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/abstract_art/AB00010.jpg")
pin.photo.attach(io: file, filename: "AB00010.jpg")

BoardsPins.create(
  pin_id: 10,
  board_id: 5
)

pin = Pin.create(
  title: "",
  description: "Abstract Art 11",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/abstract_art/AB00011.jpg")
pin.photo.attach(io: file, filename: "AB00011.jpg")

BoardsPins.create(
  pin_id: 11,
  board_id: 5
)

pin = Pin.create(
  title: "",
  description: "Abstract Art 12",
  url: "https://fineartamerica.com/",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/abstract_art/AB00012.jpg")
pin.photo.attach(io: file, filename: "AB00012.jpg")

BoardsPins.create(
  pin_id: 12,
  board_id: 5
)

pin = Pin.create(
  title: "",
  description: "Abstract Art 13",
  url: "https://fineartamerica.com/",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/abstract_art/AB00013.jpg")
pin.photo.attach(io: file, filename: "AB00013.jpg")

BoardsPins.create(
  pin_id: 13,
  board_id: 5
)

pin = Pin.create(
  title: "",
  description: "Abstract Art 14",
  url: "https://fineartamerica.com/",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/abstract_art/AB00014.jpg")
pin.photo.attach(io: file, filename: "AB00014.jpg")

BoardsPins.create(
  pin_id: 14,
  board_id: 5
)

pin = Pin.create(
  title: "",
  description: "Abstract Art 15",
  url: "https://fineartamerica.com/",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/abstract_art/AB00015.jpg")
pin.photo.attach(io: file, filename: "AB00015.jpg")

BoardsPins.create(
  pin_id: 15,
  board_id: 5
)

pin = Pin.create(
  title: "",
  description: "Abstract Art 16",
  url: "https://fineartamerica.com/",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/abstract_art/AB00016.jpg")
pin.photo.attach(io: file, filename: "AB00016.jpg")

BoardsPins.create(
  pin_id: 16,
  board_id: 5
)

pin = Pin.create(
  title: "Rekt Tree",
  description: "Abstract Art 17",
  url: "https://fineartamerica.com/",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/abstract_art/AB00017.jpg")
pin.photo.attach(io: file, filename: "AB00017.jpg")

BoardsPins.create(
  pin_id: 17,
  board_id: 5
)

pin = Pin.create(
  title: "",
  description: "Abstract Art 18",
  url: "https://fineartamerica.com/",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/abstract_art/AB00018.jpg")
pin.photo.attach(io: file, filename: "AB00018.jpg")

BoardsPins.create(
  pin_id: 18,
  board_id: 5
)

pin = Pin.create(
  title: "Color Swirl Dress",
  description: "Abstract Art 19",
  url: "https://fineartamerica.com/",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/abstract_art/AB00019.jpg")
pin.photo.attach(io: file, filename: "AB00019.jpg")

BoardsPins.create(
  pin_id: 19,
  board_id: 5
)

pin = Pin.create(
  title: "",
  description: "Abstract Art 20",
  url: "https://fineartamerica.com/",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/abstract_art/AB00020.jpg")
pin.photo.attach(io: file, filename: "AB00020.jpg")

BoardsPins.create(
  pin_id: 20,
  board_id: 5
)


# AESTHETIC ANIMALS
pin = Pin.create(
  title: "",
  description: "Aesthetic Animals 1",
  url: "https://fineartamerica.com/",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/aesthetic_animals/AE00001.jpg")
pin.photo.attach(io: file, filename: "AE00001.jpg")

BoardsPins.create(
  pin_id: 21,
  board_id: 6
)

pin = Pin.create(
  title: "Birds of a feather",
  description: "Aesthetic Animals 2",
  url: "https://fineartamerica.com/",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/aesthetic_animals/AE00002.jpg")
pin.photo.attach(io: file, filename: "AE00002.jpg")

BoardsPins.create(
  pin_id: 22,
  board_id: 6
)

pin = Pin.create(
  title: "",
  description: "Aesthetic Animals 3",
  url: "https://fineartamerica.com/",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/aesthetic_animals/AE00003.jpg")
pin.photo.attach(io: file, filename: "AE00003.jpg")

BoardsPins.create(
  pin_id: 23,
  board_id: 6
)

pin = Pin.create(
  title: "",
  description: "Aesthetic Animals 4",
  url: "https://fineartamerica.com/",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/aesthetic_animals/AE00004.jpg")
pin.photo.attach(io: file, filename: "AE00004.jpg")

BoardsPins.create(
  pin_id: 24,
  board_id: 6
)

pin = Pin.create(
  title: "",
  description: "Aesthetic Animals 5",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/aesthetic_animals/AE00005.jpg")
pin.photo.attach(io: file, filename: "AE00005.jpg")

BoardsPins.create(
  pin_id: 25,
  board_id: 6
)

pin = Pin.create(
  title: "",
  description: "Aesthetic Animals 6",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/aesthetic_animals/AE00006.jpg")
pin.photo.attach(io: file, filename: "AE00006.jpg")

BoardsPins.create(
  pin_id: 26,
  board_id: 6
)

pin = Pin.create(
  title: "",
  description: "Aesthetic Animals 7",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/aesthetic_animals/AE00007.jpg")
pin.photo.attach(io: file, filename: "AE00007.jpg")

BoardsPins.create(
  pin_id: 27,
  board_id: 6
)

pin = Pin.create(
  title: "",
  description: "Aesthetic Animals 8",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/aesthetic_animals/AE00008.jpg")
pin.photo.attach(io: file, filename: "AE00008.jpg")

BoardsPins.create(
  pin_id: 28,
  board_id: 6
)

pin = Pin.create(
  title: "",
  description: "Aesthetic Animals 9",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/aesthetic_animals/AE00009.jpg")
pin.photo.attach(io: file, filename: "AE00009.jpg")

BoardsPins.create(
  pin_id: 29,
  board_id: 6
)

pin = Pin.create(
  title: "",
  description: "Aesthetic Animals 10",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/aesthetic_animals/AE00010.jpg")
pin.photo.attach(io: file, filename: "AE00010.jpg")

BoardsPins.create(
  pin_id: 30,
  board_id: 6
)

pin = Pin.create(
  title: "King of the Jungle",
  description: "Aesthetic Animals 11",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/aesthetic_animals/AE00011.jpg")
pin.photo.attach(io: file, filename: "AE00011.jpg")

BoardsPins.create(
  pin_id: 31,
  board_id: 6
)

pin = Pin.create(
  title: "",
  description: "Aesthetic Animals 12",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/aesthetic_animals/AE00012.jpg")
pin.photo.attach(io: file, filename: "AE00012.jpg")

BoardsPins.create(
  pin_id: 32,
  board_id: 6
)

pin = Pin.create(
  title: "",
  description: "Aesthetic Animals 13",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/aesthetic_animals/AE00013.jpg")
pin.photo.attach(io: file, filename: "AE00013.jpg")

BoardsPins.create(
  pin_id: 33,
  board_id: 6
)

pin = Pin.create(
  title: "",
  description: "Aesthetic Animals 14",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/aesthetic_animals/AE00014.jpg")
pin.photo.attach(io: file, filename: "AE00014.jpg")

BoardsPins.create(
  pin_id: 34,
  board_id: 6
)


# NATURE'S BEAUTY
pin = Pin.create(
  title: "",
  description: "Nature's Beauty 01",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/nature_beauty/NB00001.jpg")
pin.photo.attach(io: file, filename: "NB00001.jpg")

BoardsPins.create(
  pin_id: 35,
  board_id: 7
)

pin = Pin.create(
  title: "",
  description: "Nature's Beauty 02",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/nature_beauty/NB00002.jpg")
pin.photo.attach(io: file, filename: "NB00002.jpg")

BoardsPins.create(
  pin_id: 36,
  board_id: 7
)

pin = Pin.create(
  title: "",
  description: "Nature's Beauty 03",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/nature_beauty/NB00003.jpg")
pin.photo.attach(io: file, filename: "NB00003.jpg")

BoardsPins.create(
  pin_id: 37,
  board_id: 7
)

pin = Pin.create(
  title: "",
  description: "Nature's Beauty 04",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/nature_beauty/NB00004.jpg")
pin.photo.attach(io: file, filename: "NB00004.jpg")

BoardsPins.create(
  pin_id: 38,
  board_id: 7
)

pin = Pin.create(
  title: "",
  description: "Nature's Beauty 05",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/nature_beauty/NB00005.jpg")
pin.photo.attach(io: file, filename: "NB00005.jpg")

BoardsPins.create(
  pin_id: 39,
  board_id: 7
)

pin = Pin.create(
  title: "",
  description: "Nature's Beauty 06",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/nature_beauty/NB00006.jpg")
pin.photo.attach(io: file, filename: "NB00006.jpg")

BoardsPins.create(
  pin_id: 40,
  board_id: 7
)

pin = Pin.create(
  title: "",
  description: "Nature's Beauty 07",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/nature_beauty/NB00007.jpg")
pin.photo.attach(io: file, filename: "NB00007.jpg")

BoardsPins.create(
  pin_id: 41,
  board_id: 7
)

pin = Pin.create(
  title: "",
  description: "Nature's Beauty 08",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/nature_beauty/NB00008.jpg")
pin.photo.attach(io: file, filename: "NB00008.jpg")

BoardsPins.create(
  pin_id: 42,
  board_id: 7
)

pin = Pin.create(
  title: "",
  description: "Nature's Beauty 09",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/nature_beauty/NB00009.jpg")
pin.photo.attach(io: file, filename: "NB00009.jpg")

BoardsPins.create(
  pin_id: 43,
  board_id: 7
)

pin = Pin.create(
  title: "",
  description: "Nature's Beauty 10",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/nature_beauty/NB00010.jpg")
pin.photo.attach(io: file, filename: "NB00010.jpg")

BoardsPins.create(
  pin_id: 44,
  board_id: 7
)

pin = Pin.create(
  title: "",
  description: "Nature's Beauty 11",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/nature_beauty/NB00011.jpg")
pin.photo.attach(io: file, filename: "NB00011.jpg")

BoardsPins.create(
  pin_id: 45,
  board_id: 7
)

pin = Pin.create(
  title: "",
  description: "Nature's Beauty 12",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/nature_beauty/NB00012.jpg")
pin.photo.attach(io: file, filename: "NB00012.jpg")

BoardsPins.create(
  pin_id: 46,
  board_id: 7
)

pin = Pin.create(
  title: "",
  description: "Nature's Beauty 13",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/nature_beauty/NB00013.jpg")
pin.photo.attach(io: file, filename: "NB00013.jpg")

BoardsPins.create(
  pin_id: 47,
  board_id: 7
)

pin = Pin.create(
  title: "",
  description: "Nature's Beauty 14",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/nature_beauty/NB00014.jpg")
pin.photo.attach(io: file, filename: "NB00014.jpg")

BoardsPins.create(
  pin_id: 48,
  board_id: 7
)

pin = Pin.create(
  title: "",
  description: "Nature's Beauty 15",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/nature_beauty/NB00015.jpg")
pin.photo.attach(io: file, filename: "NB00015.jpg")

BoardsPins.create(
  pin_id: 49,
  board_id: 7
)

pin = Pin.create(
  title: "",
  description: "Nature's Beauty 16",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/nature_beauty/NB00016.jpg")
pin.photo.attach(io: file, filename: "NB00016.jpg")

BoardsPins.create(
  pin_id: 50,
  board_id: 7
)

pin = Pin.create(
  title: "",
  description: "Nature's Beauty 17",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/nature_beauty/NB00017.jpg")
pin.photo.attach(io: file, filename: "NB00017.jpg")

BoardsPins.create(
  pin_id: 51,
  board_id: 7
)

pin = Pin.create(
  title: "",
  description: "Nature's Beauty 18",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/nature_beauty/NB00018.jpg")
pin.photo.attach(io: file, filename: "NB00018.jpg")

BoardsPins.create(
  pin_id: 52,
  board_id: 7
)

pin = Pin.create(
  title: "",
  description: "Nature's Beauty 19",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/nature_beauty/NB00019.jpg")
pin.photo.attach(io: file, filename: "NB00019.jpg")

BoardsPins.create(
  pin_id: 53,
  board_id: 7
)

pin = Pin.create(
  title: "Classic Rose",
  description: "Nature's Beauty 20",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/nature_beauty/NB00020.jpg")
pin.photo.attach(io: file, filename: "NB00020.jpg")

BoardsPins.create(
  pin_id: 54,
  board_id: 7
)

pin = Pin.create(
  title: "",
  description: "Nature's Beauty 21",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/nature_beauty/NB00021.jpg")
pin.photo.attach(io: file, filename: "NB00021.jpg")

BoardsPins.create(
  pin_id: 55,
  board_id: 7
)

pin = Pin.create(
  title: "",
  description: "Nature's Beauty 22",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/nature_beauty/NB00022.jpg")
pin.photo.attach(io: file, filename: "NB00022.jpg")

BoardsPins.create(
  pin_id: 56,
  board_id: 7
)

pin = Pin.create(
  title: "Sunflowers",
  description: "Nature's Beauty 23",
  url: "",
  user_id: 1
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/nature_beauty/NB00023.jpg")
pin.photo.attach(io: file, filename: "NB00023.jpg")

BoardsPins.create(
  pin_id: 57,
  board_id: 7
)

# LAVISH LANDS
pin = Pin.create(
  title: "City Life",
  description: "Lavish Lands 01",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00001.jpg")
pin.photo.attach(io: file, filename: "LL00001.jpg")

BoardsPins.create(
  pin_id: 58,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 02",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00002.jpg")
pin.photo.attach(io: file, filename: "LL00002.jpg")

BoardsPins.create(
  pin_id: 59,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 03",
  url: "https://fineartamerica.com/",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00003.jpg")
pin.photo.attach(io: file, filename: "LL00003.jpg")

BoardsPins.create(
  pin_id: 60,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 04",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00004.jpg")
pin.photo.attach(io: file, filename: "LL00004.jpg")

BoardsPins.create(
  pin_id: 61,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 05",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00005.jpg")
pin.photo.attach(io: file, filename: "LL00005.jpg")

BoardsPins.create(
  pin_id: 62,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 06",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00006.jpg")
pin.photo.attach(io: file, filename: "LL00006.jpg")

BoardsPins.create(
  pin_id: 63,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 07",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00007.jpg")
pin.photo.attach(io: file, filename: "LL00007.jpg")

BoardsPins.create(
  pin_id: 64,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 08",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00008.jpg")
pin.photo.attach(io: file, filename: "LL00008.jpg")

BoardsPins.create(
  pin_id: 65,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 09",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00009.jpg")
pin.photo.attach(io: file, filename: "LL00009.jpg")

BoardsPins.create(
  pin_id: 66,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 10",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00010.jpg")
pin.photo.attach(io: file, filename: "LL00010.jpg")

BoardsPins.create(
  pin_id: 67,
  board_id: 8
)

pin = Pin.create(
  title: "Ocean Sunset",
  description: "Lavish Lands 11",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00011.jpg")
pin.photo.attach(io: file, filename: "LL00011.jpg")

BoardsPins.create(
  pin_id: 68,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 12",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00012.jpg")
pin.photo.attach(io: file, filename: "LL00012.jpg")

BoardsPins.create(
  pin_id: 69,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 13",
  url: "https://fineartamerica.com/",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00013.jpg")
pin.photo.attach(io: file, filename: "LL00013.jpg")

BoardsPins.create(
  pin_id: 70,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 14",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00014.jpg")
pin.photo.attach(io: file, filename: "LL00014.jpg")

BoardsPins.create(
  pin_id: 71,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 15",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00015.jpg")
pin.photo.attach(io: file, filename: "LL00015.jpg")

BoardsPins.create(
  pin_id: 72,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 16",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00016.jpg")
pin.photo.attach(io: file, filename: "LL00016.jpg")

BoardsPins.create(
  pin_id: 73,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 17",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00017.jpg")
pin.photo.attach(io: file, filename: "LL00017.jpg")

BoardsPins.create(
  pin_id: 74,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 18",
  url: "https://fineartamerica.com/",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00018.jpg")
pin.photo.attach(io: file, filename: "LL00018.jpg")

BoardsPins.create(
  pin_id: 75,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 19",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00019.jpg")
pin.photo.attach(io: file, filename: "LL00019.jpg")

BoardsPins.create(
  pin_id: 76,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 20",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00020.jpg")
pin.photo.attach(io: file, filename: "LL00020.jpg")

BoardsPins.create(
  pin_id: 77,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 21",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00021.jpg")
pin.photo.attach(io: file, filename: "LL00021.jpg")

BoardsPins.create(
  pin_id: 78,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 22",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00022.jpg")
pin.photo.attach(io: file, filename: "LL00022.jpg")

BoardsPins.create(
  pin_id: 79,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 23",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00023.jpg")
pin.photo.attach(io: file, filename: "LL00023.jpg")

BoardsPins.create(
  pin_id: 80,
  board_id: 8
)

pin = Pin.create(
  title: "Gorgeous Falls",
  description: "Lavish Lands 24",
  url: "https://fineartamerica.com/",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00024.jpg")
pin.photo.attach(io: file, filename: "LL00024.jpg")

BoardsPins.create(
  pin_id: 81,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 25",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00025.jpg")
pin.photo.attach(io: file, filename: "LL00025.jpg")

BoardsPins.create(
  pin_id: 82,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 26",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00026.jpg")
pin.photo.attach(io: file, filename: "LL00026.jpg")

BoardsPins.create(
  pin_id: 83,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 27",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00027.jpg")
pin.photo.attach(io: file, filename: "LL00027.jpg")

BoardsPins.create(
  pin_id: 84,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 28",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00028.jpg")
pin.photo.attach(io: file, filename: "LL00028.jpg")

BoardsPins.create(
  pin_id: 85,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 29",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00029.jpg")
pin.photo.attach(io: file, filename: "LL00029.jpg")

BoardsPins.create(
  pin_id: 86,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 30",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00030.jpg")
pin.photo.attach(io: file, filename: "LL00030.jpg")

BoardsPins.create(
  pin_id: 87,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 31",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00031.jpg")
pin.photo.attach(io: file, filename: "LL00031.jpg")

BoardsPins.create(
  pin_id: 88,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 32",
  url: "https://fineartamerica.com/",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00032.jpg")
pin.photo.attach(io: file, filename: "LL00032.jpg")

BoardsPins.create(
  pin_id: 89,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 33",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00033.jpg")
pin.photo.attach(io: file, filename: "LL00033.jpg")

BoardsPins.create(
  pin_id: 90,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 34",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00034.jpg")
pin.photo.attach(io: file, filename: "LL00034.jpg")

BoardsPins.create(
  pin_id: 91,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 35",
  url: "https://fineartamerica.com/",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00035.jpg")
pin.photo.attach(io: file, filename: "LL00035.jpg")

BoardsPins.create(
  pin_id: 92,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 36",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00036.jpg")
pin.photo.attach(io: file, filename: "LL00036.jpg")

BoardsPins.create(
  pin_id: 93,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 37",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00037.jpg")
pin.photo.attach(io: file, filename: "LL00037.jpg")

BoardsPins.create(
  pin_id: 94,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 38",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00038.jpg")
pin.photo.attach(io: file, filename: "LL00038.jpg")

BoardsPins.create(
  pin_id: 95,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 39",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00039.jpg")
pin.photo.attach(io: file, filename: "LL00039.jpg")

BoardsPins.create(
  pin_id: 96,
  board_id: 8
)

pin = Pin.create(
  title: "",
  description: "Lavish Lands 40",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/lavish_lands/LL00040.jpg")
pin.photo.attach(io: file, filename: "LL00040.jpg")

BoardsPins.create(
  pin_id: 97,
  board_id: 8
)

# PEOPLE PAINTINGS
pin = Pin.create(
  title: "",
  description: "People Paintings 01",
  url: "https://fineartamerica.com/",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00001.jpg")
pin.photo.attach(io: file, filename: "PP00001.jpg")

BoardsPins.create(
  pin_id: 98,
  board_id: 9
)

pin = Pin.create(
  title: "",
  description: "People Paintings 02",
  url: "https://fineartamerica.com/",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00002.jpg")
pin.photo.attach(io: file, filename: "PP00002.jpg")

BoardsPins.create(
  pin_id: 99,
  board_id: 9
)

pin = Pin.create(
  title: "",
  description: "People Paintings 03",
  url: "https://fineartamerica.com/",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00003.jpg")
pin.photo.attach(io: file, filename: "PP00003.jpg")

BoardsPins.create(
  pin_id: 100,
  board_id: 9
)

pin = Pin.create(
  title: "",
  description: "People Paintings 04",
  url: "",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00004.jpg")
pin.photo.attach(io: file, filename: "PP00004.jpg")

BoardsPins.create(
  pin_id: 101,
  board_id: 9
)

pin = Pin.create(
  title: "",
  description: "People Paintings 05",
  url: "",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00005.jpg")
pin.photo.attach(io: file, filename: "PP00005.jpg")

BoardsPins.create(
  pin_id: 102,
  board_id: 9
)

pin = Pin.create(
  title: "",
  description: "People Paintings 06",
  url: "",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00006.jpg")
pin.photo.attach(io: file, filename: "PP00006.jpg")

BoardsPins.create(
  pin_id: 103,
  board_id: 9
)

pin = Pin.create(
  title: "",
  description: "People Paintings 07",
  url: "https://fineartamerica.com/",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00007.jpg")
pin.photo.attach(io: file, filename: "PP00007.jpg")

BoardsPins.create(
  pin_id: 104,
  board_id: 9
)

pin = Pin.create(
  title: "",
  description: "People Paintings 08",
  url: "",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00008.jpg")
pin.photo.attach(io: file, filename: "PP00008.jpg")

BoardsPins.create(
  pin_id: 105,
  board_id: 9
)

pin = Pin.create(
  title: "",
  description: "People Paintings 09",
  url: "",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00009.jpg")
pin.photo.attach(io: file, filename: "PP00009.jpg")

BoardsPins.create(
  pin_id: 106,
  board_id: 9
)

pin = Pin.create(
  title: "",
  description: "People Paintings 10",
  url: "https://fineartamerica.com/",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00010.jpg")
pin.photo.attach(io: file, filename: "PP00010.jpg")

BoardsPins.create(
  pin_id: 107,
  board_id: 9
)

pin = Pin.create(
  title: "Baby",
  description: "People Paintings 11",
  url: "",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00011.jpg")
pin.photo.attach(io: file, filename: "PP00011.jpg")

BoardsPins.create(
  pin_id: 108,
  board_id: 9
)

pin = Pin.create(
  title: "Doppleganger",
  description: "People Paintings 12",
  url: "",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00012.jpg")
pin.photo.attach(io: file, filename: "PP00012.jpg")

BoardsPins.create(
  pin_id: 109,
  board_id: 9
)

pin = Pin.create(
  title: "",
  description: "People Paintings 13",
  url: "https://fineartamerica.com/",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00013.jpg")
pin.photo.attach(io: file, filename: "PP00013.jpg")

BoardsPins.create(
  pin_id: 110,
  board_id: 9
)

pin = Pin.create(
  title: "",
  description: "People Paintings 14",
  url: "",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00014.jpg")
pin.photo.attach(io: file, filename: "PP00014.jpg")

BoardsPins.create(
  pin_id: 111,
  board_id: 9
)

pin = Pin.create(
  title: "",
  description: "People Paintings 15",
  url: "",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00015.jpg")
pin.photo.attach(io: file, filename: "PP00015.jpg")

BoardsPins.create(
  pin_id: 112,
  board_id: 9
)

pin = Pin.create(
  title: "",
  description: "People Paintings 16",
  url: "",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00016.jpg")
pin.photo.attach(io: file, filename: "PP00016.jpg")

BoardsPins.create(
  pin_id: 113,
  board_id: 9
)

pin = Pin.create(
  title: "",
  description: "People Paintings 17",
  url: "",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00017.jpg")
pin.photo.attach(io: file, filename: "PP00017.jpg")

BoardsPins.create(
  pin_id: 114,
  board_id: 9
)

pin = Pin.create(
  title: "Monarch",
  description: "People Paintings 18",
  url: "https://fineartamerica.com/",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00018.jpg")
pin.photo.attach(io: file, filename: "PP00018.jpg")

BoardsPins.create(
  pin_id: 115,
  board_id: 9
)

pin = Pin.create(
  title: "",
  description: "People Paintings 19",
  url: "",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00019.jpg")
pin.photo.attach(io: file, filename: "PP00019.jpg")

BoardsPins.create(
  pin_id: 116,
  board_id: 9
)

pin = Pin.create(
  title: "",
  description: "People Paintings 20",
  url: "",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00020.jpg")
pin.photo.attach(io: file, filename: "PP00020.jpg")

BoardsPins.create(
  pin_id: 117,
  board_id: 9
)

pin = Pin.create(
  title: "",
  description: "People Paintings 21",
  url: "",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00021.jpg")
pin.photo.attach(io: file, filename: "PP00021.jpg")

BoardsPins.create(
  pin_id: 118,
  board_id: 9
)

pin = Pin.create(
  title: "",
  description: "People Paintings 22",
  url: "",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00022.jpg")
pin.photo.attach(io: file, filename: "PP00022.jpg")

BoardsPins.create(
  pin_id: 119,
  board_id: 9
)

pin = Pin.create(
  title: "",
  description: "People Paintings 23",
  url: "",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00023.jpg")
pin.photo.attach(io: file, filename: "PP00023.jpg")

BoardsPins.create(
  pin_id: 120,
  board_id: 9
)

pin = Pin.create(
  title: "",
  description: "People Paintings 24",
  url: "",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00024.jpg")
pin.photo.attach(io: file, filename: "PP00024.jpg")

BoardsPins.create(
  pin_id: 121,
  board_id: 9
)

pin = Pin.create(
  title: "",
  description: "People Paintings 25",
  url: "https://fineartamerica.com/",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00025.jpg")
pin.photo.attach(io: file, filename: "PP00025.jpg")

BoardsPins.create(
  pin_id: 122,
  board_id: 9
)

pin = Pin.create(
  title: "Cliffside",
  description: "People Paintings 26",
  url: "",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00026.jpg")
pin.photo.attach(io: file, filename: "PP00026.jpg")

BoardsPins.create(
  pin_id: 123,
  board_id: 9
)

pin = Pin.create(
  title: "",
  description: "People Paintings 27",
  url: "",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00027.jpg")
pin.photo.attach(io: file, filename: "PP00027.jpg")

BoardsPins.create(
  pin_id: 124,
  board_id: 9
)

pin = Pin.create(
  title: "",
  description: "People Paintings 28",
  url: "https://fineartamerica.com/",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00028.jpg")
pin.photo.attach(io: file, filename: "PP00028.jpg")

BoardsPins.create(
  pin_id: 125,
  board_id: 9
)

pin = Pin.create(
  title: "",
  description: "People Paintings 29",
  url: "",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00029.jpg")
pin.photo.attach(io: file, filename: "PP00029.jpg")

BoardsPins.create(
  pin_id: 126,
  board_id: 9
)

pin = Pin.create(
  title: "",
  description: "People Paintings 30",
  url: "",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00030.jpg")
pin.photo.attach(io: file, filename: "PP00030.jpg")

BoardsPins.create(
  pin_id: 127,
  board_id: 9
)

pin = Pin.create(
  title: "",
  description: "People Paintings 31",
  url: "https://fineartamerica.com/",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00031.jpg")
pin.photo.attach(io: file, filename: "PP00031.jpg")

BoardsPins.create(
  pin_id: 128,
  board_id: 9
)

pin = Pin.create(
  title: "",
  description: "People Paintings 32",
  url: "",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00032.jpg")
pin.photo.attach(io: file, filename: "PP00032.jpg")

BoardsPins.create(
  pin_id: 129,
  board_id: 9
)

pin = Pin.create(
  title: "",
  description: "People Paintings 33",
  url: "",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00033.jpg")
pin.photo.attach(io: file, filename: "PP00033.jpg")

BoardsPins.create(
  pin_id: 130,
  board_id: 9
)

pin = Pin.create(
  title: "",
  description: "People Paintings 34",
  url: "",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00034.jpg")
pin.photo.attach(io: file, filename: "PP00034.jpg")

BoardsPins.create(
  pin_id: 131,
  board_id: 9
)

pin = Pin.create(
  title: "",
  description: "People Paintings 35",
  url: "",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00035.jpg")
pin.photo.attach(io: file, filename: "PP00035.jpg")

BoardsPins.create(
  pin_id: 132,
  board_id: 9
)

pin = Pin.create(
  title: "Anthony Kahlo",
  description: "People Paintings 36",
  url: "",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/people_paintings/PP00036.jpg")
pin.photo.attach(io: file, filename: "PP00036.jpg")

BoardsPins.create(
  pin_id: 133,
  board_id: 9
)

# BY WATER
pin = Pin.create(
  title: "",
  description: "By the water 01",
  url: "https://www.twoinchbrush.com/",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/by_water/BW00001.png")
pin.photo.attach(io: file, filename: "BW00001.png")

BoardsPins.create(
  pin_id: 134,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "By the water 02",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/by_water/BW00002.png")
pin.photo.attach(io: file, filename: "BW00002.png")

BoardsPins.create(
  pin_id: 135,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "By the water 03",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/by_water/BW00003.png")
pin.photo.attach(io: file, filename: "BW00003.png")

BoardsPins.create(
  pin_id: 136,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "By the water 04",
  url: "https://www.twoinchbrush.com/",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/by_water/BW00004.png")
pin.photo.attach(io: file, filename: "BW00004.png")

BoardsPins.create(
  pin_id: 137,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "By the water 05",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/by_water/BW00005.png")
pin.photo.attach(io: file, filename: "BW00005.png")

BoardsPins.create(
  pin_id: 138,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "By the water 06",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/by_water/BW00006.png")
pin.photo.attach(io: file, filename: "BW00006.png")

BoardsPins.create(
  pin_id: 139,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "By the water 07",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/by_water/BW00007.png")
pin.photo.attach(io: file, filename: "BW00007.png")

BoardsPins.create(
  pin_id: 140,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "By the water 08",
  url: "https://www.twoinchbrush.com/",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/by_water/BW00008.png")
pin.photo.attach(io: file, filename: "BW00008.png")

BoardsPins.create(
  pin_id: 141,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "By the water 09",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/by_water/BW00009.png")
pin.photo.attach(io: file, filename: "BW00009.png")

BoardsPins.create(
  pin_id: 142,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "By the water 10",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/by_water/BW00010.png")
pin.photo.attach(io: file, filename: "BW00010.png")

BoardsPins.create(
  pin_id: 143,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "By the water 11",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/by_water/BW00011.png")
pin.photo.attach(io: file, filename: "BW00011.png")

BoardsPins.create(
  pin_id: 144,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "By the water 12",
  url: "https://www.twoinchbrush.com/",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/by_water/BW00012.png")
pin.photo.attach(io: file, filename: "BW00012.png")

BoardsPins.create(
  pin_id: 145,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "By the water 13",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/by_water/BW00013.png")
pin.photo.attach(io: file, filename: "BW00013.png")

BoardsPins.create(
  pin_id: 146,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "By the water 14",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/by_water/BW00014.png")
pin.photo.attach(io: file, filename: "BW00014.png")

BoardsPins.create(
  pin_id: 147,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "By the water 15",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/by_water/BW00015.png")
pin.photo.attach(io: file, filename: "BW00015.png")

BoardsPins.create(
  pin_id: 148,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "By the water 16",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/by_water/BW00016.png")
pin.photo.attach(io: file, filename: "BW00016.png")

BoardsPins.create(
  pin_id: 149,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "By the water 17",
  url: "https://www.twoinchbrush.com/",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/by_water/BW00017.png")
pin.photo.attach(io: file, filename: "BW00017.png")

BoardsPins.create(
  pin_id: 150,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "By the water 18",
  url: "",
  user_id: 2
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/by_water/BW00018.png")
pin.photo.attach(io: file, filename: "BW00018.png")

BoardsPins.create(
  pin_id: 151,
  board_id: 1
)

# EVERGREEN
pin = Pin.create(
  title: "",
  description: "Evergreen 01",
  url: "https://www.twoinchbrush.com/",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/evergreen/EG00001.png")
pin.photo.attach(io: file, filename: "EG00001.png")

BoardsPins.create(
  pin_id: 152,
  board_id: 2
)

pin = Pin.create(
  title: "",
  description: "Evergreen 02",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/evergreen/EG00002.png")
pin.photo.attach(io: file, filename: "EG00002.png")

BoardsPins.create(
  pin_id: 153,
  board_id: 2
)

pin = Pin.create(
  title: "",
  description: "Evergreen 03",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/evergreen/EG00003.png")
pin.photo.attach(io: file, filename: "EG00003.png")

BoardsPins.create(
  pin_id: 154,
  board_id: 2
)

pin = Pin.create(
  title: "",
  description: "Evergreen 04",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/evergreen/EG00004.png")
pin.photo.attach(io: file, filename: "EG00004.png")

BoardsPins.create(
  pin_id: 155,
  board_id: 2
)

pin = Pin.create(
  title: "",
  description: "Evergreen 05",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/evergreen/EG00005.png")
pin.photo.attach(io: file, filename: "EG00005.png")

BoardsPins.create(
  pin_id: 156,
  board_id: 2
)

pin = Pin.create(
  title: "",
  description: "Evergreen 06",
  url: "https://www.twoinchbrush.com/",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/evergreen/EG00006.png")
pin.photo.attach(io: file, filename: "EG00006.png")

BoardsPins.create(
  pin_id: 157,
  board_id: 2
)

pin = Pin.create(
  title: "",
  description: "Evergreen 07",
  url: "",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/evergreen/EG00007.png")
pin.photo.attach(io: file, filename: "EG00007.png")

BoardsPins.create(
  pin_id: 158,
  board_id: 2
)

pin = Pin.create(
  title: "",
  description: "Evergreen 08",
  url: "https://www.twoinchbrush.com/",
  user_id: 3
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/evergreen/EG00008.png")
pin.photo.attach(io: file, filename: "EG00008.png")

BoardsPins.create(
  pin_id: 159,
  board_id: 2
)


# TRANQUIL FOREST
pin = Pin.create(
  title: "",
  description: "Tranquil Forest 01",
  url: "",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/tranquil_forest/TF00001.png")
pin.photo.attach(io: file, filename: "TF00001.png")

BoardsPins.create(
  pin_id: 160,
  board_id: 3
)

pin = Pin.create(
  title: "",
  description: "Tranquil Forest 02",
  url: "",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/tranquil_forest/TF00002.png")
pin.photo.attach(io: file, filename: "TF00002.png")

BoardsPins.create(
  pin_id: 161,
  board_id: 3
)

pin = Pin.create(
  title: "",
  description: "Tranquil Forest 03",
  url: "https://www.twoinchbrush.com/",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/tranquil_forest/TF00003.png")
pin.photo.attach(io: file, filename: "TF00003.png")

BoardsPins.create(
  pin_id: 162,
  board_id: 3
)

pin = Pin.create(
  title: "",
  description: "Tranquil Forest 04",
  url: "",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/tranquil_forest/TF00004.png")
pin.photo.attach(io: file, filename: "TF00004.png")

BoardsPins.create(
  pin_id: 163,
  board_id: 3
)

pin = Pin.create(
  title: "",
  description: "Tranquil Forest 05",
  url: "",
  user_id: 4
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/tranquil_forest/TF00005.png")
pin.photo.attach(io: file, filename: "TF00005.png")

BoardsPins.create(
  pin_id: 164,
  board_id: 3
)

# WINTER COMING
pin = Pin.create(
  title: "",
  description: "Winter is coming 01",
  url: "https://www.twoinchbrush.com/",
  user_id: 5
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/winter_coming/WC00001.png")
pin.photo.attach(io: file, filename: "WC00001.png")

BoardsPins.create(
  pin_id: 165,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Winter is coming 02",
  url: "",
  user_id: 5
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/winter_coming/WC00002.png")
pin.photo.attach(io: file, filename: "WC00002.png")

BoardsPins.create(
  pin_id: 166,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Winter is coming 03",
  url: "",
  user_id: 5
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/winter_coming/WC00003.png")
pin.photo.attach(io: file, filename: "WC00003.png")

BoardsPins.create(
  pin_id: 167,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Winter is coming 04",
  url: "https://www.twoinchbrush.com/",
  user_id: 5
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/winter_coming/WC00004.png")
pin.photo.attach(io: file, filename: "WC00004.png")

BoardsPins.create(
  pin_id: 168,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Winter is coming 05",
  url: "",
  user_id: 5
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/winter_coming/WC00005.png")
pin.photo.attach(io: file, filename: "WC00005.png")

BoardsPins.create(
  pin_id: 169,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Winter is coming 06",
  url: "https://www.twoinchbrush.com/",
  user_id: 5
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/winter_coming/WC00006.png")
pin.photo.attach(io: file, filename: "WC00006.png")

BoardsPins.create(
  pin_id: 170,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Winter is coming 07",
  url: "",
  user_id: 5
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/winter_coming/WC00007.png")
pin.photo.attach(io: file, filename: "WC00007.png")

BoardsPins.create(
  pin_id: 171,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Winter is coming 08",
  url: "",
  user_id: 5
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/winter_coming/WC00008.png")
pin.photo.attach(io: file, filename: "WC00008.png")

BoardsPins.create(
  pin_id: 172,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Winter is coming 09",
  url: "https://www.twoinchbrush.com/",
  user_id: 5
)

file = open("https://painterest-seeds.s3-us-west-1.amazonaws.com/winter_coming/WC00009.png")
pin.photo.attach(io: file, filename: "WC00009.png")

BoardsPins.create(
  pin_id: 173,
  board_id: 4
)