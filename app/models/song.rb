class Song < ApplicationRecord
	belongs_to :playlist, optional: true
	
	has_many :votes
end
