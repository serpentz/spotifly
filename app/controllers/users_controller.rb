require 'pry'
class UsersController < ApplicationController

	def index
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_login_params)
		if @user.save
			session[:user_id] = @user.id
			redirect_to @user
		else
			render :new
		end
	end

	def show
		@user = User.find(params[:id])
		if (@user.playlist)
			redirect_to playlists_path 
		end
	end

	def check_creds
		@user = User.find_by(user_login_params)
		if @user 
			session[:user_id] = @user.id

		 	redirect_to @user 
		 else
		  render :index
		end
	end

	def spotify
    spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    # Now you can access user's private data, create playlists and much more

    # Access private data
    spotify_user.country #=> "US"
    spotify_user.email   #=> "example@email.com"

    # Create playlist in user's Spotify account
    playlist = spotify_user.create_playlist!(User.find(params[:id]).playlist.name)

    # Add tracks to a playlist in user's Spotify account
    
  end
	
	private 


		def user_login_params

			params.require(:user).permit(:username, :password)

		end


end
