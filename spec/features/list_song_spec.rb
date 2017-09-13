require 'rails_helper'

describe "Artist Show" do
  let!(:artist) { create :artist, first_name: "Jan", last_name: "Klaternaad", genre:"Blues", image: "http://www.abits-it.eu/images//blogs/er-bloeit-iets-moois.jpg" }

  let!(:song1) {create :song, title: "LALA", album: "1996", artist: artist}
  let!(:song2) {create :song, title: "Ik klom eens op een andere heg", album: "1997", artist: artist}

  describe "Visitor viewing the artist show page" do

    it "shows all songs of artist" do
      visit artist_path(artist.id)

      expect(page).to have_text("LALA")
      expect(page).to have_text("LALA")
      expect(page).to have_text("1996")
      expect(page).to have_text("1997")
    end
  end
end
