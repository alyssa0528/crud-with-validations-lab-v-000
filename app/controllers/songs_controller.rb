class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new 
  end

  def create
    @song = Song.new(song_params)
    if @song.valid?
      @song.save 
      redirect_to song_path(@song)
    else 
      render :new 
    end 
  end

  def show
    find_song 
  end

  def edit
    find_song
  end

  def update
    find_song 
    if @song.update 
      redirect_to song_path(@song)
    else 
      render :edit 
    end 
  end

  def delete
  end

  private 
  def find_song
    @song = Song.find(params[:id])
  end 

  def song_params 
    params.require(:song).permit(:title, :released, :release_year, :artist_name, :genre)
  end 
end
