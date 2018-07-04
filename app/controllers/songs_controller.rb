class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
  end

  def create
    @song = Song.new(params[:song])
    if @song.valid?
      @song.save 
      redirect_to song_path(@song)
  end

  def show
    find_song 
  end

  def edit
    find_song
  end

  def update
  end

  def delete
  end

  private 
  def find_song
    @song = Song.find(params[:id])
  end 
end
