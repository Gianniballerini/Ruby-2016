# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Breed.create! [
     { name: 'Dog' },
     { name: 'Cat' },
     { name: 'Fish' },
     { name: 'Bird' },
     ]

Pet.create! [
 { name: 'Pluto', breed: Breed.find_by(name: 'Dog') },
 { name: 'Tom', breed: Breed.find_by(name: 'Cat') },
 { name: 'Nemo', breed: Breed.find_by(name: 'Fish') },
 { name: 'Dory', breed: Breed.find_by(name: 'Fish') },
 { name: 'Tweety', breed: Breed.find_by(name: 'Bird') },
 ]