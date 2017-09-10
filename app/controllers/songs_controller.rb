class SongsController < ApplicationController
  def index
      @songs = Song.all
  end
  def show
    @songs = Song.find(params[:id])
    @photos = @songs.photos
  end
  def create
      @songs = Song.new(song_params)

   if @songs.save
      redirect_to @songs
   else
      render 'new'
   end
 end
   def new
       @songs = Song.new
   end
   def create
       @songs = Song.new(song_params)

    if @songs.save
       redirect_to @songs
    else
       render 'new'
    end
    def destroy
       @songs = Song.find(params[:id])

       @songs.destroy

       redirect_to artists_path
     end
end

    private

      def song_params
        song_params = params.require(:song).permit(:title, :album, :video_url)
      end
    end
