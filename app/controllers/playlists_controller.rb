require 'pry'
class PlaylistsController < ApplicationController
  
	def index
		@user = User.find(session[:user_id])
		binding.pry
	end

  def new
  		@playlist = Playlist.new
  end

  def create

  	@playlist = Playlist.create(playlist_params)

  	if(@playlist)
  		redirect_to playlists_path
  	else
  		render :new
  	end
  end

  def join_form
  		@playlist = Playlist.new
  		render :join
  end

  def join

  	@playlist = Playlist.find_by(playlist_params)
  
  	if(@playlist)
  		user = User.find(session[:user_id])
  		user.playlist = @playlist
  		user.save
  		@playlist.users << user
  		binding.pry
  		redirect_to playlists_path
  	else
  		 flash[:notice] = "Invalid Credentials"
  		 redirect_to join_playlist_path
  	end


  end

  private 
  	def playlist_params
  		params.require(:playlist).permit(:name, :passphrase)

  	end


end
