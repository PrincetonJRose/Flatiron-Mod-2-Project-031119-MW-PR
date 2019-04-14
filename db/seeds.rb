# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pronoun.create(name: 'he/him/his')
Pronoun.create(name: 'she/her/hers')
Pronoun.create(name: 'they/them/theirs')
Pronoun.create(name: 'ey/em/eirs')
Pronoun.create(name: 'ae/aer/aers')
Pronoun.create(name: 'fae/faer/faers')
Pronoun.create(name:'ve/ver/vers')
Pronoun.create(name: 'it/its')
Pronoun.create(name: 'xe/xem/xyrs')
Pronoun.create(name: 'zie/hir/hirs')

Gender.create(name:'male')
Gender.create(name:'trans-male')
Gender.create(name:'trans-masculine')
Gender.create(name:'female')
Gender.create(name:'trans-female')
Gender.create(name:'trans-feminine')
Gender.create(name:'non-binary')
Gender.create(name:'Genderfluid')
Gender.create(name:'Agender')
Gender.create(name:'Bigender')
Gender.create(name:'Polygender')
Gender.create(name:'Neutrois')
Gender.create(name:'Gender Apathetic')
Gender.create(name:'Androgyne')
Gender.create(name:'Intergender')
Gender.create(name:'Demi-boy')
Gender.create(name:'Demi-girl')
Gender.create(name:'Intersex')
Gender.create(name:'Greygender')
Gender.create(name:'Two-spirit')
Gender.create(name:'Novigender')

Orientation.create(name:'Heterosexual')
Orientation.create(name:'Homosexual')
Orientation.create(name:'Lesbian')
Orientation.create(name:'Gay')
Orientation.create(name:'Bisexual')
Orientation.create(name:'Pansexual')
Orientation.create(name:'Polysexual')
Orientation.create(name:'Androsexual')
Orientation.create(name:'Gynosexual')
Orientation.create(name:'Questioning')
Orientation.create(name:'Asexual')
Orientation.create(name:'Demisexual')
Orientation.create(name:'Queer')