class ArtistsController < ApplicationController

      def index
          @artists = Artist.all
      end

      def show
        @artists = Artist.find(params[:id])
      end

      def edit
        @artists = Artist.find(params[:id])
      end

      def new
          @artists = Artist.new
      end
      def create
          @artists = Artist.new(artist_params)

       if @artists.save
          redirect_to @artists
       else
          render 'new'
       end
     end
     def update
        @artists = Artist.find(params[:id])

        artist_params = params.require(:artist).permit(:name, :age, :image_url)

        if @artists.update_attributes(artist_params)
          redirect_to @artists
        else
          render 'edit'
        end
 end
 def destroy
    @artists = Artist.find(params[:id])

    @artists.destroy

    redirect_to artists_path
  end

 private

   def artist_params
     artist_params = params.require(:artist).permit(:first_name, :last_name, :genre)
   end
end
