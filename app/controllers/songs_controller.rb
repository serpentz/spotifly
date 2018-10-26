require 'json'
require "rspotify"
require 'pry'

class SongsController < ApplicationController
   skip_before_action :verify_authenticity_token

  # GET /songs
  # GET /songs.json
  def index
    @songs = Song.all
  end

  # GET /songs/1
  # GET /songs/1.json
  def show

  end

  # GET /songs/new
  def new
    @song = Song.new
  end

  

  def create
    search = "#{params[:search]}"
    #  binding.pry
    #  key = Rails.application.secrets.spotify_api
    RSpotify.authenticate(Rails.application.secrets.client_id, Rails.application.secrets.client_secret)
     @spotify_songs =  RSpotify::Track.search(search)
    render '_songs'
      
   
    #  Song.parse_search(Json.parse(response))
    # binding.pry
    # 0
  end

end
