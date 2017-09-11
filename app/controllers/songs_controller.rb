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
                redirect_to artist_path(@songs), notice: "artist successfully created"
              else
                  render :new
              end
    end

    def new
       @song = Song.new
    end

    def create
        @song = Song.create(song_params.merge(artist_id: params[:artist_id]))
          @song.save
            redirect_to artists_path(params[:artist_id]), notice: "Song Created Successfully"


    end


    def destroy
        Song.find(params[:id]).destroy
        redirect_to artist_path(@artist), notice: "Song deleted!"
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
end
