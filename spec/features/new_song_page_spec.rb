require 'rails_helper'

feature "New song page" do
  scenario "create new song successfully" do
    song = build(:song)
    visit new_song_path
    expect{
      save_and_open_page
      fill_in 'song[title]', with: song.title
      fill_in 'lyrics', with: song.lyrics
      click_button 'Submit'
    }.to change(Song, :count).by(1)

    expect(current_path).to eq song_path
  end
end

