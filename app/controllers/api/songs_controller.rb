class Api::SongsController < ApplicationController

  def index
    render status: 200, json: {
      songs: Song.all
    }.to_json
  end

  def show
    song = Song.find(params[:id])

    render status: 200, json: {
      song: song
    }.to_json
  end
  def create
    @Song = Song.new(Song_params)

    respond_to do |format|
      if @Song.save
        format.html { redirect_to artist_songs_path, notice: 'Song was successfully created.' }
        format.json { render :show, status: :created, location: @Song }
      else
        format.html { redirect_to artist_songs_path }
        format.json { render json: @Song.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    song = Song.find(params[:id])
    song.destroy

    render status: 200, json: {
      message: "Song successfully deleted"
    }.to_json
  end

  private
  def song_params
    params.require(:song).permit(:title, :album, :video_url)
  end
end
