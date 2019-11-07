# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  username: 'bob_ross',
  first_name: 'Bob',
  last_name: 'Ross',
  email: 'bob_ross@happyaccidents.io',
  password: 'password123',
  location: 'Heaven',
  description: 'We don\'t make mistakes, just happy little accidents.',
  image_url: '/app/assets/images/home_bob.png'
)

User.create(
  username: 'king_james',
  first_name: 'LeBron',
  last_name: 'James',
  email: 'king_james@lakers.io',
  password: 'password123',
  location: 'Akron, OH',
  description: 'Strive For Greatness',
  image_url: '/app/assets/images/lebron_james.jpeg'
)

User.create(
  username: 'big_brow',
  first_name: 'Anthony',
  last_name: 'Davis',
  email: 'big_brow@lakers.io',
  password: 'password123',
  location: 'Chicago, IL',
  description: 'Fear The Brow',
  image_url: '/app/assets/images/anthony_davis.jpeg'
)