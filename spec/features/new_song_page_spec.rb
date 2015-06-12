require 'rails_helper'

feature "New song page" do
  scenario "create new song successfully" do
    song = build(:song)
    visit new_song_path

    expect{
      fill_in 'song[title]', with: song.title
      fill_in 'song[lyrics]', with: song.lyrics
      click_button 'Submit'
    }.to change(Song, :count).by(1)

    expect(current_path).to eq song_path Song.first
  end
end

