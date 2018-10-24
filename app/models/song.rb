class Song < ApplicationRecord
	belongs_to :playlist, optional: true
	has_many :user_votes
	has_many :votes, through: :user_votes
end
