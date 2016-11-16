require 'spec_helper'

feature "View song page" do
  context "user has not logged" do
    scenario "user should be able to view song and lyrics" do
      song = create(:song)

      visit song_path song

      expect(page).to have_content(song.title)
      expect(page).to have_content(song.lyrics)
    end
  end
end
