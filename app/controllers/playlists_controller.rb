require 'pry'
class PlaylistsController < ApplicationController

	def index
		@user = User.find(session[:user_id])

	end

  def new
  		@playlist = Playlist.new
  end

  def add_song
        binding.pry
      id = User.find(session[:user_id]).playlist.id
      song_params[:playlist_id] = id

      binding.pry
      Song.create(song_params[song_params])

      redirect_to playlists_path

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
      binding.pry
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
  		params.require(:playlist,:song).permit(:name, :passphrase,:title, :artist_name)

  	end

    def song_params

      params.require(:song).permit(:title, :artist_name)

    end


end
