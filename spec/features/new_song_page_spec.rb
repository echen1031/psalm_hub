require 'spec_helper'


feature "New song page" do
  let(:user) {create(:user)}

  before(:each) do
    login(user)
  end

  context "create new song" do
    scenario "succesfully" do
      song = build(:song)
      visit new_song_path

      expect{
        fill_in 'song[title]', with: song.title
        fill_in 'song[lyrics]', with: song.lyrics
        click_button 'Submit'
      }.to change(Song, :count).by(1)

      expect(current_path).to eq song_path Song.first
    end

    scenario "cannot be saved"
    scenario "cannot be uploaded"
  end

  scenario "create new song with mp3 upload" do
    skip "see: http://stackoverflow.com/questions/7260394/test-a-file-upload-using-rspec-rails"
    song = build(:song)
    visit new_song_path

    expect{
      fill_in 'song[title]', with: song.title
      #fill_in 'song[file]', 
      click_button 'Submit'
    }.to change(Song, :count).by(1)

    expect(current_path).to eq song_path Song.first
  end
end

