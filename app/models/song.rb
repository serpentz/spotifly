class Song < ApplicationRecord
	belongs_to :playlist, optional: true
	validates :title, uniqueness: true
	has_many :votes
end
