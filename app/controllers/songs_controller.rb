class SongsController < ApplicationController
  def index
      @songs = Song.all
  end
  def show
    @songs = Song.find(params[:id])
  end
  def create
      @songs = Song.new(artist_params)

   if @songs.save
      redirect_to @songs
   else
      render 'new'
   end
 end
   def new
       @songs = Song.new
   end
end
