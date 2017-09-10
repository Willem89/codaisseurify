class SongsController < ApplicationController
before_action :set_song, only: [:show, :destroy]

  def index;
  end
  def show
    @song = Song.find(params[:id])

  end
  def create
      @song = Song.new(artist_params)

      if @song.save
        image_params.each do |image|

      end

      redirect_to artist_path(@songs), notice: "artist successfully created"
      else
      render :new
      end
      end



   def new
       @song = Song.new
   end

   def create
    @song = Artist.new(artist_params)
    if @song.save
      image_params.each do |image|
        @song.photos.create(image: image)
      end
      redirect_to @song, notice: "Artist Created Successfully"
    else
      render :new
    end
  end
end
      def destroy
      @song.destroy

      redirect_to artist_path(@song)
      end


    private
      def set_artist
          @song = Artist.find(params[:artist_id])
      end
      def set_song
          @song = Song.find(params[:song_id])
      end
      def song_params
          params.require(:song).permit(:title, :album, :video_url)
      end
