# stocke les img dans db/fixtures/users/patricia.jpg

puts 'cleaning database...'
User.destroy_all
Castle.destroy_all # rentals table dependent destroy

puts 'creating users...'
alex = User.create!(
  email: 'patri.martinez.pena@gmail.com',
  password: '123456',
  first_name: 'Alex',
  last_name: 'Gira',
  avatar: File.open(Rails.root.join('db/fixtures/users/patricia.jpg')),
)
francine = User.create!(
  email: 'rat.melanie@gmail.com',
  password: 'ratatouille',
  first_name: 'Francine',
  last_name: 'Milton',
  avatar: File.open(Rails.root.join('db/fixtures/users/melanie.jpg')),
)
paola = User.create!(
  email: 'dianedupayrat@gmail.com',
  password: 'tigggr',
  first_name: 'Paola',
  last_name: 'Griz',
  avatar: File.open(Rails.root.join('db/fixtures/users/diane.jpg')),
)

puts 'creating castles and rental orders'

camelot_castle = Castle.create!(
  name: "Camelot's castle",
  available: true,
  nb_players: 4,
  description: "Ideal for a 'Moyen-Age' theme party!",
  photo: File.open(Rails.root.join('db/fixtures/castles/camelot_castle.jpg')),
  day_price: 100,
  address: 'Nantes',
  renter: francine,
)
tigger_castle = Castle.create!(
  name: "Tigger's belly castle",
  available: true,
  nb_players: 8,
  description: "Let's play with our mascot! Awesome for 6-10 years-old :)",
  photo: File.open(Rails.root.join('db/fixtures/castles/tigger_castle.jpg')),
  day_price: 120,
  address: 'Marseille',
  renter: paola,
)
wizard_castle = Castle.create!(
  name: "Wizard's castle",
  available: true,
  nb_players: 12,
  description: "Let's make magic!",
  photo: File.open(Rails.root.join('db/fixtures/castles/camelot_castle.jpg')),
  day_price: 400,
  address: 'Marseille',
  renter: francine,
)
moon_walk_castle = Castle.create!(
  name: "Moon Walk castle",
  available: true,
  nb_players: 11,
  description: "Rendez-vous in another galaxy!",
  photo: File.open(Rails.root.join('db/fixtures/castles/moon_walk_castle.jpg')),
  day_price: 300,
  address: 'Marseille',
  renter: francine,
)
castle = Castle.create!(
  name: "Giraffe castle",
  available: true,
  nb_players: 8,
  description: "Our create! addition! Try it!!",
  photo: File.open(Rails.root.join('db/fixtures/castles/giraffe_castle.jpg')),
  day_price: 250,
  address: 'Paris',
  renter: paola,
)
castle = Castle.create!(
  name: "Hippo castle",
  available: false,
  nb_players: 10,
  description: "Ideal for active kids, they'll play with the obstacles included.",
  photo: File.open(Rails.root.join('db/fixtures/castles/hippo_castle.jpg')),
  day_price: 100,
  address: 'Nantes',
  renter: paola,
)
castle = Castle.create!(
  name: "Dragon Princess castle",
  available: true,
  nb_players: 4,
  description: "Your sons will adore this!",
  photo: File.open(Rails.root.join('db/fixtures/castles/dragon_princess_castle.jpg')),
  day_price: 120,
  address: 'Nantes',
  renter: paola,
)
castle = Castle.create!(
  name: "Hamburger castle",
  available: true,
  nb_players: 8,
  description: "Have fun inside this gigantic hamburger!",
  photo: File.open(Rails.root.join('db/fixtures/castles/hamburger_castle.jpg')),
  day_price: 200,
  address: 'Marseille',
  renter: alex,
)
castle = Castle.create!(
  name: "Farm castle",
  available: true,
  nb_players: 8,
  description: "Play as carots, salads and potatoes!",
  photo: File.open(Rails.root.join('db/fixtures/castles/farm_castle.jpg')),
  day_price: 130,
  address: 'Marseille',
  renter: paola,
)
unicorn_castle = Castle.create!(
  name: "Unicorn castle",
  available: true,
  nb_players: 6,
  description: "Unicorns are never out of style!",
  photo: File.open(Rails.root.join('db/fixtures/castles/unicorn_castle.jpg')),
  day_price: 210,
  address: 'Nantes',
  renter: francine,
)
frozen_castle = Castle.create!(
  name: "Frozen castle",
  available: true,
  nb_players: 6,
  description: "Let it bounce, let it bouuuuunce!",
  photo: File.open(Rails.root.join('db/fixtures/castles/frozen_castle.jpg')),
  day_price: 190,
  address: 'Nantes',
  renter: francine,
)

puts "Creating rentails..."

rental = Rental.create!(
  player: alex,
  castle: tigger_castle
  status: 'pending',
  total_price: 240,
  start_on: 2019-03-25,
  ends_on: 2019-03-26,
)
rental = Rental.create!(
  player: alex,
  castle: wizard_castle
  status: 'pending',
  total_price: 800,
  start_on: 2019-03-25,
  ends_on: 2019-03-26,
)
rental = Rental.create!(
  player: alex,
  castle: moon_walk_castle
  status: 'accepted',
  total_price: 600,
  start_on: 2019-03-25,
  ends_on: 2019-03-26,
)
rental = Rental.create!(
  player: paola,
  castle: camelot_castle
  status: 'accepted',
  total_price: 300,
  start_on: 2019-03-22,
  ends_on: 2019-03-24,
)
rental = Rental.create!(
  player: paola,
  castle: unicorn_castle
  status: 'denied',
  total_price: 420,
  start_on: 2019-03-22,
  ends_on: 2019-03-24,
)
