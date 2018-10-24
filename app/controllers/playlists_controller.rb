class PlaylistsController < ApplicationController
  
	def index
		@user = User.find(session[:user_id])
	end

  def new
  end

  def create


  end
end
