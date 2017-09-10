class SongsController < ApplicationController
before_action :set_song, only: [:show, :destroy]

  def index;
  end
  def show
    @song = Song.find(params[:id])

  end
  def create
      @song = Song.new(song_params)

   if @song.save
      redirect_to artist_path(@artist)

   else
      render 'new'
   end


   def new
       @song = Artist.new
   end

   def create
    @artist = Artist.new(artist_params)
    if @artist.save
      image_params.each do |image|
        @artist.photos.create(image: image)
      end
      redirect_to @artist, notice: "Artist Created Successfully"
    else
      render :new
    end
  end
end
      def destroy
      @song.destroy

      redirect_to artist_path(@artist)
      end
end

    private
      def set_artist
          @artist = Artist.find(params[:artist_id])
      end
      def set_song
          @song = Song.find(params[:song_id])
      end
      def song_params
          params.require(:song).permit(:title, :album, :video_url)
      end
