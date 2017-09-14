require 'rails_helper'

describe "Current visitor viewing the list of artists" do

let!(:artist1) { create :artist, first_name: "Janna", last_name: "Klaternaad", genre: "Blues", image: "http://www.abits-it.eu/images//blogs/er-bloeit-iets-moois.jpg"}
let!(:artist2) { create :artist, first_name: "Eva", last_name: "Klaternaad", genre: "Blues", image: "http://www.abits-it.eu/images//blogs/er-bloeit-iets-moois.jpg"}
let!(:artist3) { create :artist, first_name: "Mimi", last_name: "Klaternaad", genre: "Blues", image: "http://www.abits-it.eu/images//blogs/er-bloeit-iets-moois.jpg"}

it "shows all artists" do
  visit artists_url

  expect(page).to have_text("Eva Klaternaad")
  expect(page).to have_text("Mimi Klaternaad")
end


end
