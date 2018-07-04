class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new 
  end

  def create
    @song = Song.new(post_params)
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
  end

  def delete
  end

  private 
  def find_song
    @song = Song.find(params[:id])
  end 
end
