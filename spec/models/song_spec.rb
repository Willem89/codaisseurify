require 'rails_helper'

  RSpec.describe Song, type: :model do
    describe "validations" do
      it "is invalid without a title" do
        song = Song.new(title: "")
        song.valid?
          expect(song.errors).to have_key(:title)
        end
      it "is invalid without a title" do
          song = Song.new(album: "")
            song.valid?
              expect(song.errors).to have_key(:album)
            end
      it "is invalid without a title" do
        song = Song.new(video_url: "")
          song.valid?
            expect(song.errors).to have_key(:video_url)
        end
end
end
