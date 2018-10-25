class Song < ApplicationRecord

	has_many :votes
	belongs_to :playlist, optional: true
	validates :title, uniqueness: true

end
