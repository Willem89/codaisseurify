require 'rails_helper'

feature 'Manage tasks', js: true do
  scenario 'remove song' do
      visit artist_path(artist.id)
      click_on 'Delete song'

    end
end
