require 'json'
require 'rest-client'
require 'pry'

class SongsController < ApplicationController


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
      
    #   RSpotify::Artist.search('Arctic Monkeys')
      
    #   response = RestClient.get(URL_SEARCH, {params: {q: search, type: "track", limit: 20}}, authorization: "bearer #{Rails.application.secrets.spotify_api}" )

    #  Song.parse_search(Json.parse(response))
    # binding.pry
    # 0
  end

end
