class Playlist < ApplicationRecord

	# validates name, uniqueness: true, presence: true
	# validates passphrase, length: {minimum: 4}

	
	has_many :users

	has_many :songs

	# has_many :playlist_songs
	# has_many :songs, through: :playlist_songs

	

end
