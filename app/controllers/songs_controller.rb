class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
  end

  def create
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
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
