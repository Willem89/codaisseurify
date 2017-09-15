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

                respond_to do |format|
                  if @song.save
                    format.html { redirect_to artist_path(params[:artist_id]), notice: 'Song was successfully created.' }
                    format.json { render :show, status: :created, location: @Song }
                  else
                    format.html { redirect_to artist_songs_path }
                    format.json { render json: @Song.errors, status: :unprocessable_entity }
                  end
                end
              end




      def destroy
              @song = Song.find(params[:id])

              @song.destroy
              respond_to do |format|
                    format.html { redirect_to artist_path(params[:artist_id]), notice: 'Song was deleted.'}
                    format.json { head :no_content }
                  end 
      end


      private
      def set_artist
              @song = Artist.find(params[:artist_id])
      end

      def song_params
              params.require(:song).permit(:title, :album, :video_url)
      end
end
