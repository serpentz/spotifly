class Song < ApplicationRecord
	has_many :playlists
	has_many :votes
end
