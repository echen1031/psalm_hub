require 'rails_helper'

feature "Update song page" do

  scenario "update basic song attributes" do
    new_song_attr = create(:song)
    visit song_path create(:song)
    click_link 'edit'

    fill_in 'song[title]', with: new_song_attr.title
    fill_in 'song[lyrics]', with: new_song_attr.lyrics
    click_button 'Submit'

    expect(page).to have_content(new_song_attr.title)
  end

  context "mp3 not yet uploaded" do
    scenario "able to upload a mp3" do
      skip "find out how to test upload"
      song = create(:song)
      visit song_path song
    end
  end

  context "mp3 already uploaded" do
    scenario "don't allow upload of new song"
    scenario "ability to delete uploaded mp3"
  end
end

