bob = Agent.find_or_create_by({first_name: 'Bob', last_name: 'Williams', phone_number: '(415)-555-5556'})
john = Agent.find_or_create_by({first_name: 'John', last_name: 'Smith', phone_number: '(415)-555-6666'})
walter = Agent.find_or_create_by({first_name: 'Walter', last_name: 'White', phone_number: '(415)-555-7777'})
paul = Agent.find_or_create_by({first_name: 'Paul', last_name: 'Jones', phone_number: '(415)-555-8888'})


beafles = Band.find_or_create_by({name: 'The Beafles', signed_on: Date.parse('2001-02-03'), agent: bob})
aces = Band.find_or_create_by({name: 'The Aces', signed_on: Date.parse('1980-07-22'), agent: john})
beanies = Band.find_or_create_by({name: 'Beanies', signed_on: Date.parse('1990-05-21'), agent: walter})
walnuts = Band.find_or_create_by({name: 'The Walnuts', signed_on: Date.parse('1999-12-31'), agent: walter})

goldstar = Track.find_or_create_by({title: 'GoldSTAR', released_on: Date.parse('2012-02-03'), seconds: 291, band: beafles})
silverstar = Track.find_or_create_by({title: 'SilverMoon', released_on: Date.parse('2011-01-12'), seconds: 302, band: beafles})
spades = Track.find_or_create_by({title: 'Ace of Spades', released_on: Date.parse('2010-04-04'), seconds: 293, band: aces})
muffled = Track.find_or_create_by({title: 'Muffled', released_on: Date.parse('2009-05-05'), seconds: 201, band: beanies})
nutty = Track.find_or_create_by({title: 'Nutty Jam', released_on: Date.parse('2009-05-05'), seconds: 182, band: walnuts})
hard_to_hear = Track.find_or_create_by({title: 'Hard to Hear', released_on: Date.parse('2011-01-07'), seconds: 306, band: aces})
big_thing = Track.find_or_create_by({title: 'Next Big Thing', released_on: Date.parse('2012-02-03'), seconds: 291, band: beafles})
bronzestar = Track.find_or_create_by({title: 'Bronze Starlight', released_on: Date.parse('2012-06-03'), seconds: 291, band: beafles})
staircase = Track.find_or_create_by({title: 'Silver Stairs', released_on: Date.parse('2011-01-12'), seconds: 302, band: beafles})
shovels = Track.find_or_create_by({title: 'Ace of Shovels', released_on: Date.parse('2010-04-04'), seconds: 293, band: aces})
lastace = Track.find_or_create_by({title: 'Last Ace', released_on: Date.parse('2009-05-05'), seconds: 201, band: beanies})
peanut = Track.find_or_create_by({title: 'Peanut Spread', released_on: Date.parse('2009-05-05'), seconds: 182, band: walnuts})
smiling = Track.find_or_create_by({title: 'Smiling', released_on: Date.parse('2011-01-07'), seconds: 306, band: aces})
small = Track.find_or_create_by({title: 'Next Small Thing', released_on: Date.parse('2012-02-03'), seconds: 291, band: beafles})

stars = Album.find_or_create_by({title: 'Stars', released_on: Date.parse('2013-02-03')})
stars.tracks = [goldstar, silverstar, spades, bronzestar]
stars.save!


silent = Album.find_or_create_by({title: 'Silent Movie Soundtrack', released_on: Date.parse('2014-01-03')})
silent.tracks = [muffled, hard_to_hear, big_thing, nutty]
silent.save!


