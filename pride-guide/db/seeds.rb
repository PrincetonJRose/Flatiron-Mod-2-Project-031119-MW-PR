# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Gender.destroy_all
Pronoun.destroy_all
Orientation.destroy_all
Pronoun.create(name: "He/Him")
Pronoun.create(name: "She/Her")
Pronoun.create(name: "They/Them")
Pronoun.create(name: "It/Itself")
Gender.create(name: "Male")
Gender.create(name: "Female")
Gender.create(name: "Asexual")
Orientation.create(name: "Straight")
Orientation.create(name: "Gay")
Orientation.create(name: "Lesbian")
Orientation.create(name: "Bisexual")

