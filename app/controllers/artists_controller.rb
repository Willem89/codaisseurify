class ArtistsController < ApplicationController

        def index
            @artists = Artist.all
        end

        def show
            @artist = Artist.find(params[:id])
        end



        def new
          @artist = Artist.new
        end

        def create
              @artist = Artist.new(artist_params)

          if  @artist.save
              redirect_to artists_path(params[:artist_id]), notice: "artist successfully created"
          else
              render :new
          end
        end

        def update
            if @artist.update(artist_params)

            end
            redirect_to artist_path(params[:artist_id]), notice: "artist successfully updated"
            else
            render :update
        end


        def destroy
          @artist = Artist.find(params[:id])

          @artist.destroy

          redirect_to artists_path
        end


        private

        def artist_params
              params.require(:artist).permit(:first_name, :last_name, :genre)
        end
end
