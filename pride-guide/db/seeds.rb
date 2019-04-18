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

Resource.destroy_all
State.destroy_all

Resource.create(name:'The Trevor Project', number:'1-866-488-7386', url:'https://www.thetrevorproject.org', address:'', city: '', state:'', country:'', description: 'The Trevor Project offers accredited life-saving, life-affirming programs and services to LGBTQ youth that create safe, accepting and inclusive environments over the phone, online and through text.', image: "trevor_project.png")

 Resource.create(name:'LGBT National Help Center', number:'1-800-246-7743', url:'https://www.glbthotline.org', address:'', city: '', state:'', country:'', description:'The Lesbian, Gay, Bisexual and Transgender (LGBT) National Help Center, founded in 1996, is a non-profit, tax-exempt organization that provides vital peer-support, community connections and resource information to people with questions regarding sexual orientation and/or gender identity. Utilizing a diverse group of LGBT volunteers, we operate three national hotlines, the LGBT National Hotline, the LGBT National Youth Talkline, and the LGBT National Senior Hotline as well as private, volunteer one-to-one online chat, that helps both youth and adults with coming-out issues, safer-sex information, school bullying, family concerns, relationship problems and a lot more.', image: "lgbt-institute.jpg")

 Resource.create(name:'Trans Kids Purple Rainbow Foundation', number:'', url:'http://www.transkidspurplerainbow.org/', address:'', city: '', state:'', country:'', description:'TKPRF is committed to the premise that Gender Dysphoria is something a child can’t control and it is society that needs to change, not them. Families need to support their children and be encouraged to allow them to grow-up free of gender roles.', image: "tkprf-logo.png")

 Resource.create(name:'AIS-DSD Support Group', number:'', url:'http://aisdsd.org', address:'', city: '', state:'', country:'', description:'Promoting Support, Education, And Outreach To Foster Healthy Outcomes
For Adults, Youth, Children, And Families
Affected By Intersex/ Differences Of Sex Development (DSD).', image: "aisdsd-support-group.png")

 Resource.create(name:'The Health Initiative', number:'404-688-2524', url:'http://thehealthinitiative.org/', address:'530 DeKalb Avenue', city: 'Atlanta', state:'GA', country:'USA', description:'The Health Initiative is dedicated to improving the health and wellbeing of Georgia’s Lesbian, Gay, Bisexual, Transgender and Queer community through education, support, access to care and advocacy.', image: "the-health-initiative.png")

 Resource.create(name:'Georgia Equality', number:'404.523.3070', url:'https://georgiaequality.org/', address:'1530 DeKalb Avenue NE, Suite A', city: 'Atlanta', state:'GA', country:'USA', description:"Georgia Equality’s mission is to advance fairness, safety and opportunity for lesbian, gay, bisexual and transgender communities and our allies throughout the state. We are two organizations – united with a common vision but serving unique functions in our work to achieve equality. Georgia Equality, Inc. works year-round to pass pro-equality legislation and elect fair-minded elected officials. Through the Equality Foundation of Georgia, we conduct voter registration and educational activities, provide information to decision makers, and work to organize and mobilize LGBT residents and allies to advance equality in urban, suburban, and rural communities across the state.", image: "georgia-equality.png")

 Resource.create(name:'Pro Georgia', number:'404-539-3689', url:'http://progeorgia.org/', address:'1530 Dekalb Ave, Suite A', city: 'Atlanta', state:'GA', country:'USA', description:"ProGeorgia is Georgia’s non-profit civic engagement table. It is a new way to create a state we can be proud of. We strive to become a state that takes care of its citizens and our beautiful natural resources. ProGeorgia brings together the power of existing non-profit groups to work in a more strategic way, with new tools and technology, to change the policies of our state. ProGeorgia is building infrastructure by supporting, connecting, and coordinating civic participation efforts of our non-profit member groups. And ProGeorgia is implementing ways to win policy and electoral battles for progressive social change.", image: "pro-georgia.png")

 Resource.create(name:'Atlanta Pride', number:'(404) 382-7588', url:'https://www.atlantapride.org', address:'
1530 DeKalb Ave NE, Suite A', city: 'Atlanta', state:'GA', country:'USA', description:'The main purpose of the Atlanta Pride Committee, a 501(c)(3) organization, is to advance unity, visibility and self-esteem among lesbians, gay men, bisexuals, and transgender and queer persons and to promote a positive image in the Atlanta area and throughout the Southeastern United States through community activities and services.', image: "atlanta-pride.png")

 Resource.create(name:'Covenant House Georgia', number:'404-589-0163', url:'http://covenanthousega.org/', address:'1559 Johnson Rd NW', city: 'Atlanta', state:'GA', country:'USA', description:"At Covenant House Georgia (CHGA), we are much more than a shelter. We provide more than a bed and a meal for homeless and trafficked youth; we show unconditional love and give comprehensive support so that our youth can and will realize their fullest potential.
 In fact, seeing their potential is our greatest motivation. We are optimistic about the power of a stable, loving environment to inspire a fresh start in their lives. Looking beyond broken pasts, we know that each of our youth can have a bright future, and everything we do is in effort to have them know it, too.
 This effort transforms everyone involved in CHGA. Continuously showing youth the light in their lives brightens ours in turn. Each day, our youth take steps - both big and small - toward reaching their goals. Seeing their progress energizes our work.
 It's a privilege to support our youth during their most formative years. We empower them to finish high school, start college, gain employment, live independently, and ultimately step out into the world knowing they are prepared to be successful.
 CHGA is a place of refuge, a place of growing, and a place where people find and fulfill their calling. ", image: "covenant-house-georgia.jpg")

 Resource.create(name:"Lost n' Found", number:'678-856-7825', url:'https://lnfy.org/', address:'2585 Chantilly Drive', city: 'Atlanta', state:'GA', country:'USA', description:'
Lost-n-Found Youth is an Atlanta-based nonprofit (501c3) that exists to end homelessness for Lesbian, Gay, Bisexual, Transgender, Queer (LGBTQ+) and all sexual minority youth.', image: "lost-n-found-youth-thrift-store.jpg")

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