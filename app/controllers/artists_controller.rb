class ArtistsController < ApplicationController

      def index
          @artists = Artist.all
      end

      def show
        @artists = Artist.find(params[:id])
        @photos = @artists.photos
      end

      def edit
  if current_user.id == @artists.user.id
    @photos = @artists.photos
  else
    redirect_to root_path, notice: "You don't have permission."
  end
end

      def new
          @artists = Artist.new
      end
      def create
        @artists = Artist.create(artist_params)
        @artists.image = image_params
        @artists.save
        redirect_to artists_path,
        notice: "New artist has been successfully created!"
      end


end
        def update
        if @artists.update(artist_params)
        image_params.each do |image|
         @artists.photos.create(image: image)
        end

        redirect_to edit_artist_path(@artists), notice: "artist successfully updated"
        else
        render :edit
        end
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
   def image_params
  params[:images].present? ? params.require(:images) : []
end
