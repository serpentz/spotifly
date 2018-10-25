class Song < ApplicationRecord
	belongs_to :playlist, optional: true
<<<<<<< HEAD
	has_many :user_votes
	has_many :votes, through: :user_votes
	validates :title, uniqueness: true
=======
	
	has_many :votes
>>>>>>> c69e5de15a1915d34ead869e127915b2341bc552
end
