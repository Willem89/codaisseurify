require 'rails_helper'

feature 'Manage tasks', js: true do
artist5 = Artist.create!(first_name: "Willem", last_name: "Sinnige", genre: "Blues", image: "https://cdn.pixabay.com/photo/2015/07/06/15/12/w-833386_960_720.png")

song88 = Song.create!(title:"I Do", album:"Guillermo", video_url:"www.youtube.com", artist:artist5)

scenario 'delete song' do
   visit artist_path(5)
   click_link('delete song')
   expect(page).not_to have_content('I do')
end
scenario 'add a song' do
   visit artist_path(5)
   fill_in 'form_title', with: 'test song'
   fill_in 'form_album', with: 'test album'
   fill_in 'form_video_url', with: 'test.com'
   click_submit('Add')
   expect(page).to have_content('test song')
 end
 end
