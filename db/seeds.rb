# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'pry'


# user_hash = {username: "serpentz", password: "password"}


user = User.find_or_create_by(username: "serpentz", password: "password")
playlist1 = Playlist.find_or_create_by(name: "party", passphrase: "password")
playlist2 = Playlist.find_or_create_by(name: "study", passphrase: "welcome")
playlist3 = Playlist.find_or_create_by(name: "festival", passphrase: "blahblah")
playlist4 = Playlist.find_or_create_by(name: "dance", passphrase: "tiger")
playlist5 = Playlist.find_or_create_by(name: "for cooking", passphrase: "pestoforpasta")


song1 = Song.find_or_create_by(title: "Girls Like You", artist_name: "Maroon5 Featuring Cardi B")
song2 = Song.find_or_create_by(title: "Lucid Dreams", artist_name: "Juice WRLD")
song3 = Song.find_or_create_by(title: "Better Now", artist_name: "Post Malone")
song4 = Song.find_or_create_by(title: "MIA", artist_name: "Bad Bunny Featuring Drake")
song5 = Song.find_or_create_by(title: "Happier", artist_name: "Marshmello & Bastille")
song6 = Song.find_or_create_by(title: "Sicko Mode", artist_name: "Travis Scott")
song7 = Song.find_or_create_by(title: "Drip Too Hard", artist_name: "Lil Baby & Gunna")
song8 = Song.find_or_create_by(title: "Youngblood", artist_name: "5 Seconds Of Summer")
song9 = Song.find_or_create_by(title: "Shallow", artist_name: "Lady Gaga & Bradley Cooper")
song10 = Song.find_or_create_by(title: "Trip", artist_name: "Ella Mai")
song11 = Song.find_or_create_by(title: "I Like It", artist_name: "CardiB, Bad Bunny & J Balvin")
song12 = Song.find_or_create_by(title: "Natural", artist_name: "Imagine Dragons")
song13 = Song.find_or_create_by(title: "Love Lies", artist_name: "Khalid & Normandi")

user1 = User.find_or_create_by(username: "music123", password: "abcdefg", premium: true)
user2 = User.find_or_create_by(username: "kwest", password: "iloveit", premium: false)
user3 = User.find_or_create_by(username: "serpentz", password: "spacebar", premium: true)
user4 = User.find_or_create_by(username: "pasolre95kim", password: "mypassword", premium: true)
user5 = User.find_or_create_by(username: "myusername", password: "yourpassword", premium: false)

binding.pry
0
