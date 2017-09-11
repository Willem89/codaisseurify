class SongsController < ApplicationController


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
            redirect_to artist_path(params[:artist_id])


    end


    def destroy
      @song = Song.find(params[:id])

      @song.destroy

      redirect_to artist_path(params[:artist_id])
    end


      private
      def set_artist
          @song = Artist.find(params[:artist_id])
      end

      def song_params
          params.require(:song).permit(:title, :album, :video_url)
      end
end
