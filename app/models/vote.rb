class Vote < ApplicationRecord

	has_many :song_votes
	has_many :songs, through: :song_votes
	
end
