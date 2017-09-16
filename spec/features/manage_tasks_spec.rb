require 'rails_helper'

feature 'Manage tasks', js: true do
scenario 'delete a song' do
artist5 = Artist.create!(first_name: "Willem", last_name: "Sinnige", genre: "Blues", image: "https://cdn.pixabay.com/photo/2015/07/06/15/12/w-833386_960_720.png")

song88 = Song.create!(title:"I Do", album:"Guillermo", video_url:"www.youtube.com", artist:artist5)

visit artist_url(artist.id);

page.execute_script("$('#delete').click()");

expect(page).not_to have_content('Damn');

end
end
