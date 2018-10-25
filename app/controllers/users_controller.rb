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
			redirect_to @user.playlist
		end
	end

	def check_creds
		@user = User.find_by(user_login_params)

		
		if @user 
		 redirect_to @user 

		 else
		  render :index
		end
	end




	
	private 


		def user_login_params

			params.require(:user).permit(:username, :password)

		end


end
