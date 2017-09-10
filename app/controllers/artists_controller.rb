class ArtistsController < ApplicationController

      def index
          @artists = Artist.all
      end

      def show
          @artists = Artist.find(params[:id])
          @photos = @artists.photos
      end



      def new
          @artist = Artist.new
      end
      def create
          @artist = Artist.new(artist_params)

          if @artist.save
            image_params.each do |image|

    end

          redirect_to artist_path(@artists), notice: "artist successfully created"
  else
          render :new
  end
end



        def update
        if @artist.update(artist_params)
        image_params.each do |image|

        end

        redirect_to artist_path(@artists), notice: "artist successfully updated"
        else
        render :update
        end

       end
       def destroy
          @artist = Artist.find(params[:id])

          @artist.destroy

          redirect_to artists_path
        end
end
