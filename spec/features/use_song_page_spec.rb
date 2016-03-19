require 'spec_helper'

feature "Use song page" do
  scenario "finds audio playback song" do
    skip "don't know how to test playback"
    song = create(:song)
    visit song_path song
    expect(page).to have_content(song.title)
  end
end

