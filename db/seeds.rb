# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

puts "Creating Users"

user = User.create!(
  email: "dalton@gmail.com",
  password: "password1"
)




Granny.destroy_all

puts "Creating Grannies"

Granny.create!([{
  name: "Ma Dalton ",
  address: "Penitencier de Canyon River",
  birth_date: "02/03/1915",
  price: rand(100),
  user: user

},
{
  name: " Nova Mamie ",
  address: "rue de la yoaoutière",
  birth_date: "14/02/1939",
  price: rand(100),
  user: user
},
{
  name: "Mauricette ",
  address: "Avenue de la boulette la verité",
  birth_date: "27/09/1947",
  price: rand(100),
  user: user
},
{
  name: "Brigitte Bardot",
  address: "La manade avec mes poules et mes chiens ",
  birth_date: "18/08/1950",
  price: rand(100),
  user: user
},
{
  name: "Jeannine ",
  address: "chemin faisant l' orée du bois ",
  birth_date: "18/12/1953",
  price: rand(100),
  user: user
},
{
  name: "Georgette ",
  address: "au bon pastaga à coté du boulodrome ",
  birth_date: "17/11/1939",
  price: rand(100),
  user: user
},
{
  name: "Becassine ",
  address: "La Bastille",
  birth_date: "18/07/1938",
  price: rand(100),
  user: user
},
{
  name: "Chantal Goya",
  address: "Pandi Panda Chine",
  birth_date: "18/12/1928",
  price: rand(100),
  user: user
},
{
  name: "Francoise Dolto",
  address: "Parc de l'enfant Roi",
  birth_date: "19/10/1942",
  price: rand(100),
  user: user
},
{
  name: "Simone Veil",
  address: "Pere Lachaise 3ème tombe a droite",
  birth_date: "18/07/1938",
  price: rand(100),
  user: user

}])

p "Created #{Granny.count} Grannies"
puts "Grannies created !!"
