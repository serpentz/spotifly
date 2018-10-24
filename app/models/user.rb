class User < ApplicationRecord

	validates  :username, uniqueness: true, presence: true
	validates :password, presence: true, length: {minimum: 4}

	belongs_to :playlist, optional: true

	def join_playlist(name1,password1)
		playlist_hash = {name: name1, password: password1 }
		found_playlist ||= Playlist.find_by(playlist_hash)
		if found_playlist 
		 self.playlists << found_playlist 
		end
	end

	def leave_playlist(playlist)
		self.playlists.containsself.playlists.delete(playlist)
		if found_playlist 
		 self.playlist = found_playlist 
		end
	end

end