class User < ApplicationRecord

	validates  :username, uniqueness: true, presence: true
	validates :password, presence: true, length: {minimum: 4}

	belongs_to :playlist, optional: true

	# has_many :songs , through: :playlist



end