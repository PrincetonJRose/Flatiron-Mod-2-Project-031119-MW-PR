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

states = State.create!([
  { state_name: 'Alaska', state_code: 'AK' },
  { state_name: 'Alabama', state_code: 'AL' },
  { state_name: 'Arkansas', state_code: 'AR' },
  { state_name: 'Arizona', state_code: 'AZ' },
  { state_name: 'California', state_code: 'CA' },
  { state_name: 'Colorado', state_code: 'CO' },
  { state_name: 'Connecticut', state_code: 'CT' },
  { state_name: 'District of Columbia', state_code: 'DC' },
  { state_name: 'Delaware', state_code: 'DE' },
  { state_name: 'Florida', state_code: 'FL' },
  { state_name: 'Georgia', state_code: 'GA' },
  { state_name: 'Hawaii', state_code: 'HI' },
  { state_name: 'Iowa', state_code: 'IA' },
  { state_name: 'Idaho', state_code: 'ID' },
  { state_name: 'Illinois', state_code: 'IL' },
  { state_name: 'Indiana', state_code: 'IN' },
  { state_name: 'Kansas', state_code: 'KS' },
  { state_name: 'Kentucky', state_code: 'KY' },
  { state_name: 'Louisiana', state_code: 'LA' },
  { state_name: 'Massachusetts', state_code: 'MA' },
  { state_name: 'Maryland', state_code: 'MD' },
  { state_name: 'Maine', state_code: 'ME' },
  { state_name: 'Michigan', state_code: 'MI' },
  { state_name: 'Minnesota', state_code: 'MN' },
  { state_name: 'Missouri', state_code: 'MO' },
  { state_name: 'Mississippi', state_code: 'MS' },
  { state_name: 'Montana', state_code: 'MT' },
  { state_name: 'North Carolina', state_code: 'NC' },
  { state_name: 'North Dakota', state_code: 'ND' },
  { state_name: 'Nebraska', state_code: 'NE' },
  { state_name: 'New Hampshire', state_code: 'NH' },
  { state_name: 'New Jersey', state_code: 'NJ' },
  { state_name: 'New Mexico', state_code: 'NM' },
  { state_name: 'Nevada', state_code: 'NV' },
  { state_name: 'New York', state_code: 'NY' },
  { state_name: 'Ohio', state_code: 'OH' },
  { state_name: 'Oklahoma', state_code: 'OK' },
  { state_name: 'Oregon', state_code: 'OR' },
  { state_name: 'Pennsylvania', state_code: 'PA' },
  { state_name: 'Puerto Rico', state_code: 'PR' },
  { state_name: 'Rhode Island', state_code: 'RI' },
  { state_name: 'South Carolina', state_code: 'SC' },
  { state_name: 'South Dakota', state_code: 'SD' },
  { state_name: 'Tennessee', state_code: 'TN' },
  { state_name: 'Texas', state_code: 'TX' },
  { state_name: 'Utah', state_code: 'UT' },
  { state_name: 'Virginia', state_code: 'VA' },
  { state_name: 'Vermont', state_code: 'VT' },
  { state_name: 'Washington', state_code: 'WA' },
  { state_name: 'Wisconsin', state_code: 'WI' },
  { state_name: 'West Virginia', state_code: 'WV' },
  { state_name: 'Wyoming', state_code: 'WY' }
])